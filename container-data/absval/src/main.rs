#![no_std]
#![no_main]

use klee_sys::klee_make_symbolic;

use panic_klee as _;

fn absolute_test(a: i64){
    assert!(a.abs() >= 0)
}

#[no_mangle]
fn main() {
    let mut x: i64 = 6;
    klee_make_symbolic!(&mut x, "x");
    absolute_test(x)
}
