fn main() {

    // define an immutable value x that is an unsigned 32 bit integer
    let x: u32 = 1;

    // Rust ensures that x is only a u32 type else rustc complains
    // in C, &x[1] is a 'valid' access but can actually read into
    // an undefined/allocated memory region

    // By catching this at compile time, the Rust compiler can save us a world of pain
    // debugging memory errors
    println!("Hello, Rust!, {}", x);

    return;
}