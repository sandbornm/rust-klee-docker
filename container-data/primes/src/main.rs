#![no_std]
#![no_main]

use klee_sys::klee_make_symbolic;
use panic_klee as _;


fn isprime_check(n: usize) -> bool {
    // base cases
    if (n > 1) & (n < 4) {
        return true;
    } else if (n < 2) || (n % 2 == 0) {
        return false;
    }

    let stop: usize = n as usize + 1; //(n as f64).sqrt() as usize + 1;
    for i in (3..stop).step_by(2) {
        if n % i == 0 {
            return false;
        }
    }
    true
}

fn isprime_simple(n: usize) -> bool {
    if n == 1 {
        return false;
    }

    for m in 2..n-1 {
        if n % m == 0 {
            return false;
        }
    }
    true
}

fn prime_test(n: usize){
    // invoke panic! if the following statement is false
    assert_eq!(isprime_simple(n), isprime_check(n));
}

#[no_mangle]
fn main(){
    let mut n: usize = 0x7FFF_FFFF; // the mersenne prime 2^31-1
    klee_make_symbolic!(&mut n, "n");
    prime_test(n);
}
