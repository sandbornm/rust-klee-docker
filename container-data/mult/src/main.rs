#![no_std]
#![no_main]

use klee_sys::klee_make_symbolic;

use panic_klee as _;

fn multiply(a: u32, b: u32) {
      if (a >= 1 && a <= 1000) && (b >=1 && b <= 1000){
	      let r = a*b;
      	      assert!(1 <= r && r < 1000000);
	}
}

#[no_mangle]
fn main() {
    let mut a: u32 = 1;
    let mut b: u32 = 1;
    klee_make_symbolic!(&mut a, "a");
    klee_make_symbolic!(&mut b, "b");
    multiply(a, b);
}


