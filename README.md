# 12 Language Programming  feat. Docker & Ubuntu

Someday, I thought: "Is it possible to have 12 different programming languages on my PC?".

And this repo is the answer 😂. A simple password validator via Bash.

## Info

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

The need to run each file(interpreters and compilers) is solved with a Docker Container and VSCode.

## My 3 personal commands

For the container, I created 3 alias commands for bash: `update nosave clean`.

```bash
# Update, upgrade and autoremove for Ubuntu packages
update
# Delete command history in the current Bash terminal
nosave
# Clean up all unnecessary bytecode in the remote container
clean
```

## Dev Info

- VSCode with [remote containers](https://code.visualstudio.com/docs/remote/containers) (Docker container with Ubuntu)
- Extension for VSCode [Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)

## License

© 2022 [Jhordyess](https://github.com/jhordyess). Under the [MIT](https://choosealicense.com/licenses/mit/) license.

---

Made with 💪 by [Jhordyess](https://www.jhordyess.com/)
