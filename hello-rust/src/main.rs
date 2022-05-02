// every Rust program starts with a function main
fn main() {

    // println! is a macro, which means that Rust code
    // replaces the println! at runtime with actual rust
    // code that prints to the console
    println!("Hello, Rust!");

    return;
}

// to install a new rust crate (package),
// run cargo install <package_name>

// to compile this program, run rustc main.rs
// the binary is rather large (~10MB) because the
// Rust runtime environment (thread and memory safe),
// portable as long as libpthread is present on host

