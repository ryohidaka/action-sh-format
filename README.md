# ShellScript Formatter

![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-sh-format)
[![Test Action](https://github.com/ryohidaka/action-sh-format/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-sh-format/actions/workflows/test.yml)

A GitHub Action that formats shell scripts using [shfmt](https://github.com/mvdan/sh).

## Usage

```yml
on:
  push:
    branches:
      - main

jobs:
  format-shell-scripts:
    runs-on: ubuntu-latest
    permissions:
      contents: write
    steps:
      - uses: ryohidaka/action-sh-format@v1
        with:
          path: "."
```

## Inputs

| Input               | Description                                         | Default                      |
| ------------------- | --------------------------------------------------- | ---------------------------- |
| `path`              | Directory path to format shell scripts.             | `.`                          |
| `indent`            | Set the indentation level for shfmt.                | `4`                          |
| `commit-user-name`  | Commit username.                                    | `GitHub Actions`             |
| `commit-user-email` | Commit email.                                       | `actions@github.com`         |
| `commit-message`    | Commit message.                                     | `chore: Format ShellScripts` |
| `dry-run`           | If true, the commit and push steps will be skipped. | `false`                      |

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
