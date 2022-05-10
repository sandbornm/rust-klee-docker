#![no_std]
#![no_main]

use klee_sys::klee_make_symbolic;
use panic_klee as _;


fn fact_rec(n: usize) -> usize {
    if n == 0 || n == 1 {
        return 1;
    } else {
        n * fact_rec(n-1)
    }
}

fn fact_iter(n: usize) -> usize {
    let mut prod = 1;

    if n == 0 || n == 1 {
        return prod;
    } else {
        for x in 2..n+1 {
            prod *= x;
        }
    }
    return prod;
}

fn fact_test(n: usize){
    // invoke panic! if the following statement is false
    assert_eq!(fact_rec(n), fact_iter(n));
}

#[no_mangle]
fn main(){
    let mut n: usize = 12;
    klee_make_symbolic!(&mut n, "n");
    fact_test(n);
}
