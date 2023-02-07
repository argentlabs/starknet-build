<div align="center">
  <h1>Cairo 1.0🐺 </h1>
  <h2> ⚡ Blazing ⚡ fast ⚡ compiler for Cairo, written in 🦀 Rust 🦀 </h2>
  <a href="https://github.com/starkware-libs/cairo/issues/new?assignees=&labels=bug&template=01_BUG_REPORT.md&title=bug%3A+">Report a Bug</a>
  -
  <a href="https://github.com/starkware-libs/cairo/issues/new?assignees=&labels=enhancement&template=02_FEATURE_REQUEST.md&title=feat%3A+">Request a Feature</a>
  -
  <a href="https://github.com/starkware-libs/cairo/discussions">Ask a Question</a>
</div>

<div align="center">
<br />

[![GitHub Workflow Status](https://github.com/starkware-libs/cairo/actions/workflows/ci.yml/badge.svg)](https://github.com/starkware-libs/cairo/actions/workflows/ci.yml)
[![Project license](https://img.shields.io/github/license/starkware-libs/cairo.svg?style=flat-square)](LICENSE)
[![Pull Requests welcome](https://img.shields.io/badge/PRs-welcome-ff69b4.svg?style=flat-square)](https://github.com/starkware-libs/cairo/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22)

</div>


---

## Getting Started

### Prerequisites

- Install [Rust](https://www.rust-lang.org/tools/install)
- Setup Rust:
```bash
rustup override set stable && rustup update && cargo test
```

Having installed Rust, go ahead to clone the repo, by running the command below on a terminal:

`git clone `

### Compiling and running Cairo files

Compile Cairo Contracts to Sierra:
```bash
cargo run --bin cairo-compile -- /path/to/input.cairo /path/to/output.sierra --replace-ids
```

Compile Starknet Contracts to Sierra:
```bash
cargo run --bin starknet-compile -- /path/to/input.cairo /path/to/output.sierra --replace-ids
```

Compile Cairo-Sierra to casm (Cairo assembly):
```bash
cargo run --bin sierra-compile -- /path/to/input.sierra /path/to/output.casm
```

Compile Starknet-Sierra to casm (Cairo assembly):
```bash
cargo run --bin starknet-sierra-compile -- /path/to/input.sierra /path/to/output.casm
```

Run Cairo code directly:
```bash
cargo run --bin cairo-run -- -p /path/to/file.cairo
```

See more information [here](./crates/cairo-lang-runner/README.md). You can also find Cairo examples in the [examples](./examples) directory.


## Setting up VSCode for Cairo 1.0 Development

Follow the instructions in [vscode-cairo](./vscode-cairo/README.md).