# 12 Language Programming  feat. Docker & Ubuntu

Someday, I thought: "Is it possible to have 12 different programming languages on my PC?".

And this repo is the answer 😂. A simple password validator via Bash.

## Description

This repo contains 12 scripts, and each script solves the same problem but in different programming languages:

- C
- Cpp
- C#
- Go
- Java
- JavaScript
- Kotlin
- PHP
- Python
- R
- Ruby
- Swift

The [Dockerfile](/.devcontainer/Dockerfile) file contains the installation scripts for compilers and interpreters. Additionally, I've created the alias `clean` for zsh, which can be used to delete bytecode files such as `class`, `jar`, and `exe`.

The [devcontainer.json](/.devcontainer/devcontainer.json) file contains configurations for using [dev containers](https://code.visualstudio.com/docs/devcontainers/containers) and ensuring the use of the [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner) extension within the container.

## License

© 2022 [Jhordyess](https://github.com/jhordyess). Under the [MIT](https://choosealicense.com/licenses/mit/) license.

---

Made with 💪 by [Jhordyess](https://www.jhordyess.com/)
