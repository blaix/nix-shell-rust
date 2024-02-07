# Nix Shell Template for Gren

This is a template to use rust
in an isolated [nix shell](https://nixos.wiki/wiki/Development_environment_with_nix-shell)
that automatically loads with [direnv](https://direnv.net/).

It points cargo to a `.cargo` directory local to the project
and puts the local `.cargo/bin` on the `PATH`.

It's set up to use a local `rust-toolchain.toml`
via [this rust overlay](https://github.com/oxalica/rust-overlay).

## Requirements

* [nix](https://nix.dev/install-nix.html)
* [direnv](https://direnv.net/)
* Optional but highly recommended: [nix-direnv](https://github.com/nix-community/nix-direnv)
* Optional: [degit](https://github.com/Rich-Harris/degit) (otherwise just copy this repo however you want)

## Usage

1. `degit blaix/nix-shell-rust my-rust-project`
2. `cd my-rust-project`
3. `direnv allow`
4. `cargo init` 🎉
