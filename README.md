
![Alt text](logo.png)

# RUST-KLEE docker

build:

```bash
docker build -t rkd .
```

run:

```bash
docker run --rm -it rkd
```

## How to use 

you can test klee with `klee-example`:

Go to `klee-example`:

```bash
cd cargo-klee/klee-examples
```

Compile to `llvm-ir` (you can also compile to `llvm-bc`)

```bash
cargo rustc -v --features klee-analysis --example get_sign --color=always -- -C linker=true -C lto --emit=llvm-ir
```

Run klee on the `.ll` file (or `.bc` file if you used `llvm-bc`)

```bash
klee target/debug/examples/get_sign*.ll
```

output:
```bash
KLEE: output directory is "/home/arch/klee-example/target/debug/examples/klee-out-0"
KLEE: Using Z3 solver backend

KLEE: done: total instructions = 89
KLEE: done: completed paths = 3
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 3
```

### Using cargo-klee

```bash
cargo klee --example get_sign
```

## Version

rustup: `1.51.0`
klee: `2.2`
LLVM: `10.0.0` 

## Credit

Thanks `henriktjader` for:
* `cargo klee`: <https://gitlab.henriktjader.com/pln/cargo-klee>
* `klee_tutorial`: <https://gitlab.henriktjader.com/pln/klee_tutorial>

### Specify your own target

In order to specify your own Rust target for analysis in the Docker environment, it is assumed that the directory (e.g. Github repo) of interest is located on the host. To run with a target, use the following

1. `sudo docker run -it -v "/path/to/target/on/host:/path/to/target/in/container" <container_name>` to start the container with the target directory loaded
2. todo - add details for isolating target code to be used with cargo klee boilerplate

