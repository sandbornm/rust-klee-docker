// Testing a small Rust function.
// Inspired by `get_sign` https://klee.github.io/tutorials/testing-function/

// Here, we do not want to analyse the Rust run-time, thus `no_std`.
#![no_std]
#![no_main]

// Low level binding(s) to the KLEE API.
use klee_sys::klee_make_symbolic;

// Binding of Rust `panic` to KLEE `abort`.
use panic_klee as _;

fn get_sign(x: i32) -> i32 {
    if x == 0 {
        return 0;
    }
    if x < 0 {
        return -1;
    } else {
        return 1;
    }
}

// KLEE needs the non mangled `main` symbol.
#[no_mangle]
fn main() {
    let mut a: i32 = 0;
    klee_make_symbolic!(&mut a, "a");
    get_sign(a);
}

// Compile a Rust program for KLEE test case generation.
//
// > cargo klee --examples get_sign
// ...
//
// KLEE: Using Z3 solver backend
//
// KLEE: done: total instructions = 89
// KLEE: done: completed paths = 3
// KLEE: done: generated tests = 3
//
// To view the generated tests:
//
// > ls target/debug/examples/klee-last/
// assembly.ll  messages.txt  run.stats         test000002.ktest  warnings.txt
// info         run.istats    test000001.ktest  test000003.ktest
//
// > ktest-tool target/debug/examples/klee-last/test000001.ktest
// ktest file : 'target/debug/examples/klee-last/test000001.ktest'
// args       : ['.../target/debug/examples/get_sign-<SOME_HASH>.ll']
// num objects: 1
// object 0: name: 'a'
// object 0: size: 4
// object 0: data: b'\x00\x00\x00\x80'
// object 0: hex : 0x00000080
// object 0: int : -2147483648
// object 0: uint: 2147483648
// object 0: text: ....
//
// (The order of test cases is non-deterministic, so your output might be different.)
//
// To replay test cases in `gdb`.
//
// > cargo klee --replay --gdb --example get_sign
// ...
// Reading symbols from get_sign.replay...
// (gdb) set environment KTEST_FILE=klee-last/test000001.ktest
// (gdb) break get_sign
// Breakpoint 1 at 0x555555555165: file examples/get_sign.rs, line 15.
// (gdb) run
// Breakpoint 1, get_sign::get_sign (x=-2147483648) at examples/get_sign.rs:15
// 15          if x == 0 {
// (gdb) next
// 18          if x < 0 {
// (gdb) next
// 19              return -1;
//
// The environment variable `GDB_CWD` determines the `gdb` working directory,
// if unset `gdb` will execute in the current working directory.
//
// For convenience the current working directory is set by default to coincide
// with the generated binary and KLEE tests.
//
// Problem shooting!!!
//
// For replay, the `kleeRuntest.so.1.0` library is dynamically linked.
// If not present in the default path you need to set `LD_LIBRARY_PATH` to include
// the location of this library.
//
// An error might look like this:
//
// (gdb) r
// Starting program: ...cargo-klee/klee-examples/target/debug/examples/get_sign.replay:
// error while loading shared libraries: libkleeRuntest.so.1.0:
// cannot open shared object file: No such file or directory
//
