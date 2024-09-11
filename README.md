# ShellScript Formatter

[![release](https://badgen.net/github/release/ryohidaka/action-sh-format)](https://github.com/ryohidaka/action-sh-format/releases/)
[![Test Action](https://github.com/ryohidaka/action-sh-format/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-sh-format/actions/workflows/test.yml)

A GitHub Action that formats shell scripts using [shfmt](https://github.com/mvdan/sh).

## Usage

```yml
- uses: ryohidaka/action-sh-format@v1
  with:
    path: "."
```

## Inputs

| Input               | Required | Description                                         | Default                      |
| ------------------- | -------- | --------------------------------------------------- | ---------------------------- |
| `path`              |          | Directory path to format shell scripts.             | `.`                          |
| `commit-user-name`  |          | Commit username.                                    | `GitHub Actions`             |
| `commit-user-email` |          | Commit email.                                       | `actions@github.com`         |
| `commit-message`    |          | Commit message.                                     | `chore: Format ShellScripts` |
| `dry-run`           |          | If true, the commit and push steps will be skipped. | `false`                      |
