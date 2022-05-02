
![Alt text](logo.png)

# SHREK - Searching for Hardened Rust Executions with KLEE

build (may require sudo; this take several minutes as there are ~18 steps). Specifically, the build
- uses a base image of ubuntu 20
- installs apt dependencies such as git, gdb, and z3
- installs [rust-lang](https://www.rust-lang.org/)
- installs, builds, and configures [KLEE](https://klee.github.io/) with [LLVM11](https://releases.llvm.org/11.0.0/docs/ReleaseNotes.html)
- installs [cargo-klee](https://gitlab.henriktjader.com/pln/cargo-klee)
- grants sudo powers to all users (be mindful of this!)


## Setup the Docker container
build the container with the tag rkd to refer to it later
```bash
docker build -t rkd .
```

run the container interactively and with tty (i.e. display a shell) note this may require sudo but the Dockerfile
enables sudo when constructing the container
```bash
docker run --rm -it rkd
```

(you may also need to specify --cap-add=SYS_PTRACE --security-opt seccomp=unconfined in the Docker run command)


## To run an existing cargo klee example 

Go to `klee-example`:

```bash
cd cargo-klee/klee-examples
```

Compile to `llvm-ir` (you can also compile to `llvm-bc`; input rust source, output llvm ir).
This creates a target directory 

```bash
cargo rustc -v --features klee-analysis --example get_sign --color=always -- -C linker=true -C lto --emit=llvm-ir
```

Run klee on the `.ll` file (or `.bc` file if you used `llvm-bc`)
```bash
klee target/debug/examples/get_sign*.ll
```

example output (cargo klee runs until it is stopped):
```bash
KLEE: output directory is "/home/arch/klee-example/target/debug/examples/klee-out-0"
KLEE: Using Z3 solver backend

KLEE: done: total instructions = 89
KLEE: done: completed paths = 3
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 3
```

### To run cargo klee on your own target(s)
(e.g. a folder called container-data containing rust code to be tested with cargo klee) In order to specify your own Rust target for analysis in the Docker environment, it is assumed that the directory (e.g. Github repo) of interest is located on the host. To run with a target, use the following

1. `sudo docker run -it -v "/path/to/target/on/host:/path/to/target/in/container" <container_name>` to start the container with the target directory loaded
2. For example, for the folder `container-data` in this repo and the docker image named `rkd`, run `sudo docker run -it -v "~/rust-klee-docker/container-data:~/container-data" rkd`
3. note that these must be absolute paths (i.e. replace ~ above with the fully qualified path to files)

### To examine ktest files generated after running Cargo Klee in GDB

1. `cargo klee -g -r --bin <directory_of_rs_code>` (-g is for gdb, -r is for replay)
2. `set environment KTEST_FILE=klee_last/test000001.ktest` to specify the file to test
3. in gdb, run `break <name of function to test>` then `run` or `r`

### Version

rustup: `1.51.0`
klee: `2.2`
LLVM: `10.0.0` 

### Credit

Thanks `henriktjader` for:
* `cargo klee`: <https://gitlab.henriktjader.com/pln/cargo-klee>
* `klee_tutorial`: <https://gitlab.henriktjader.com/pln/klee_tutorial>

Thanks `bajacc` for:
* `rust-klee-docker`: <https://github.com/bajacc/rust-klee-docker>
