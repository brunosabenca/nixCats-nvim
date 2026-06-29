# Update all flake inputs and push the updated lock
update:
    nix flake update
    git add flake.lock
    git diff --cached --quiet || (git commit -m "chore: update flake inputs" && git push)

# Update a specific flake input
up input:
    nix flake update {{ input }}

# Build the neovim package
build:
    nix build .#nixCats

# Check flake outputs without building
check:
    nix flake check --no-build

# Print all available just commands
help:
    @just --list
