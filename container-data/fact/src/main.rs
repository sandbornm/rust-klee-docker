#![no_std]
#![no_main]

use klee_sys::klee_make_symbolic;

use panic_klee as _;


// iterative factorial
// fn fact(n: i16) -> i32 {
//     match n {
//         0 | 1 => 1,
//         _ => (1..n + 1).product(),
//     }
// }

// recursive factorial
fn fact_rec(n: i32) -> i32 {
    match n {
        0 | 1 => 1,
        _ => fact_rec(n - 1) * n
    }
}

fn fact_test(n: i32){
    // invoke panic! if the following statement is false
    assert_eq!(fact_rec(n), (1..n + 1).product())
}

#[no_mangle]
fn main(){
    let mut n: i32 = 12;
    klee_make_symbolic!(&mut n, "n");
    fact_test(n);
}
