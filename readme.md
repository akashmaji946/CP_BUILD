# Project Name: CP_BUILD

This project contains scripts and source files to handle various tasks related to building, running, cleaning, and comparing C++ programs.

## Scripts

### `chmod`
- Do a `chmod` to give execute permissions to all `.sh` files
- **Usage**: `chmod +x *.sh`


### `build.sh`
- **Usage**: `./build.sh <file>`
- **Description**: Compiles the C++ program located at `<file>/<file>.cpp` using the C++20 standard and `-O2` optimization. It outputs the executable as `<file>/<file>.out`.
- **Output**: `Success` or the compilation error message on failure.

### `run.sh`
- **Usage**: `./run.sh <file>`
- **Description**: Runs the compiled executable `<file>/<file>.out` with input redirected from `<file>/in.txt` and output redirected to `<file>/out.txt`. The execution time is logged in `<file>/runtime.log`.
- **Output**: Shows execution success or failure and logs timing details.

### `diff.sh`
- **Usage**: `./diff.sh <file>`
- **Description**: Compares the program's output (`<file>/out.txt`) with the expected output (`<file>/exp.txt`). Prints differences if they exist.
- **Output**: Displays whether the output matches or differs from the expected results.

### `clean.sh`
- **Usage**: `./clean.sh`
- **Description**: Deletes all files except `.cpp`, `.c`, `.txt`, and `.sh` files in the current directory and all subdirectories.
- **Output**: Confirms that the cleanup is complete.

## Setup

1. Clone this repository to your local machine.
2. Ensure that your project is organized with a directory containing source files (`.cpp`), input (`in.txt`), and expected output (`exp.txt`).

## License

This project is licensed under the free License.
