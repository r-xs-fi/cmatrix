Container image for CMatrix - matrix like effect in your terminal

## Usage

```shell
docker run --rm -it ghcr.io/r-xs-fi/cmatrix
```

## Supported platforms


| OS    | Architecture  | Supported | Example hardware |
|-------|---------------|-----------|-------------|
| Linux | amd64 | ✅       | Regular PCs (also known as x64-64) |
| Linux | arm64 | ✅       | Raspberry Pi with 64-bit OS, other single-board computers, Apple M1 etc. |
| Linux | arm/v7 | ✅       | Raspberry Pi with 32-bit OS, older phones |
| Linux | riscv64 | ✅       | More exotic hardware |

## How does this software get to me?

```mermaid
flowchart TD
    subgraph "Origin"
        sourcerepo["Original source repo"]
    end
    subgraph "Alpine infrastructure"
        Alpine_build[Alpine build machine]
        Alpine_package[Alpine package registry: cmatrix 🔗]

        click Alpine_package "https://pkgs.alpinelinux.org/package/edge/community/x86/cmatrix"
    end
    subgraph "Packaging build"
        rxsfi_build["r.xs.fi build (GitHub Actions)"]
    end
    subgraph "Container Registry"
        r_xs_fi_package_registry[ghcr.io/r-xs-fi/cmatrix 🔗]

        click r_xs_fi_package_registry "https://ghcr.io/r-xs-fi/cmatrix"
    end
    subgraph "user"
        docker_run[$ docker run ...]
    end
    sourcerepo -- downloads --> Alpine_build -- stores --> Alpine_package
    Alpine_package -- download --> rxsfi_build
	rxsfi_build -- push --> r_xs_fi_package_registry
	r_xs_fi_package_registry -- pull --> docker_run[$ docker run ...]

```
