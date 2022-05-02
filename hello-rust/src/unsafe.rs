fn main() {

    // init a fake address location with undefined size
    let address = 0x12345usize;
    // store an i32 const pointer to address in r1
    let r1 = address as *const i32;

    unsafe { // tell the compiler "I know what I am doing" and don't check for 5 unsafe superpowers
        // raw pointer dereference is not allowed in safe Rust...
        println!("r1 is {}", *r1);
        // indeed, if we try to run this we'll get a segmentation fault
    }

    // we see how unsafe can lead to memory errors, but this does not mean unsafe is useless.
    // In fact, a lot of "safe" Rust code is realized by carefully using the unsafe keyword for
    // granular control over memory.

    return;
}