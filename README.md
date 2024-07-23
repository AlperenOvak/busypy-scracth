# Busybox Container Setup

This script sets up a minimal Busybox container environment from scratch. Busybox combines tiny versions of many common UNIX utilities into a single small executable. It provides a minimalist environment to run UNIX commands.

## Prerequisites

- Docker installed on your system.
- Internet connection for downloading Busybox binary.

## How to Use

1. **Prepare the Environment**: Run the `sh setup.sh` in your terminal. This will run `pythonSetup.sh`. This script will just download the python into your local.

And then it will run the `busyboxContainerSetup.sh` script. This script will:
   - Check if the `rootfs` directory exists, and if so, it will remove it.
   - Create a new `rootfs` directory structure (`bin`, `etc`, `root`).
   - Download the Busybox binary if it's not already present.
   - Set executable permissions on the Busybox binary.
   - Create minimal `passwd` and `group` files for root access.
   - Build a Docker image named `busybox`.
   - Run a Docker container using the `busybox` image.

2. **Cleanup**: After running the container, the script performs cleanup by removing the `Python-3.8.12` directory and tarball (if present), the `rootfs` directory, and the Busybox binary.

## Notes

- The script assumes Docker is installed and configured correctly on your system.
- It uses Busybox version 1.35.0-x86_64-linux-musl; modify the download URL in the script if you need a different version.
- The Docker commands in the script run a container interactively; modify the `docker run` command if you need a different behavior.
