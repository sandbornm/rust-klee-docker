#![no_std]
#![no_main]

use klee_sys::klee_make_symbolic;
use panic_klee as _;


fn isprime_wrong(n: usize) -> bool {
    if (n == 2) || (n == 3) || (n == 5) || (n == 7){
        return true;
    } else if n % 2 == 0 {
        return false;
    }
    return true;
}

fn isprime_check(n: usize) -> bool {
    if n == 0 || n == 1 {
        return false;
    } else if n == 2 {
        return true;
    }

    for m in 3..n {
        if n % m == 0 {
            return false;
        }
    }
    return true;
}

fn prime_test(n: usize){
    // invoke panic! if the following statement is false
    assert_eq!(isprime_check(n), isprime_wrong(n));
}

#[no_mangle]
fn main(){
    let mut n: usize = 11; // the mersenne prime 2^31-1
    klee_make_symbolic!(&mut n, "n");
    prime_test(n);
}
