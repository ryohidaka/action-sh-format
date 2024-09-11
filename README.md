# action-sh-format

[![release](https://badgen.net/github/release/ryohidaka/action-sh-format)](https://github.com/ryohidaka/action-sh-format/releases/)
[![Test Action](https://github.com/ryohidaka/action-sh-format/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-sh-format/actions/workflows/test.yml)

A GitHub Action that formats shell scripts using shfmt.

## Usage

```yml
- uses: ryohidaka/action-sh-format@v1
  with:
    who-to-greet: "Mona the Octocat"
- run: echo random-number "$RANDOM_NUMBER"
  shell: bash
  env:
    RANDOM_NUMBER: ${{ steps.foo.outputs.random-number }}
```

## Inputs

| Input          | Required | Description  | Default | Example |
| -------------- | -------- | ------------ | ------- | ------- |
| `who-to-greet` | ✔        | Who to greet | `World` | `World` |
| ``             | ❌       |              | ``      | ``      |

## Outputs

| Output          | Description   | Example |
| --------------- | ------------- | ------- |
| `random-number` | Random number | `9999`  |
