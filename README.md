# ShellScript Formatter

[![release](https://badgen.net/github/release/ryohidaka/action-sh-format)](https://github.com/ryohidaka/action-sh-format/releases/)
[![Test Action](https://github.com/ryohidaka/action-sh-format/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-sh-format/actions/workflows/test.yml)

A GitHub Action that formats shell scripts using shfmt.

## Usage

```yml
- uses: ryohidaka/action-sh-format@v1
  with:
    path: "."
```

## Inputs

| Input  | Required | Description                             | Default | Example     |
| ------ | -------- | --------------------------------------- | ------- | ----------- |
| `path` |          | Directory path to format shell scripts. | `.`     | `./scripts` |
