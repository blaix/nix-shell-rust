with import <nixpkgs> {
  overlays = [
    (import (builtins.fetchTarball "https://github.com/oxalica/rust-overlay/archive/master.tar.gz"))
  ];
};
mkShell {
  buildInputs = [
    (rust-bin.fromRustupToolchainFile ./rust-toolchain.toml)
    bashInteractive
  ];
  shellHook = ''
    export CARGO_HOME="$PWD/.cargo"
    export PATH="$PWD/.cargo/bin:$PATH"
  '';
}
