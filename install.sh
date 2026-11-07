#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v stow >/dev/null 2>&1; then
  printf 'GNU Stow is required. Install it first (for example, `brew install stow`).\n' >&2
  exit 127
fi

stow --restow --no-folding --dir="$repo_dir" --target="$HOME" git vim zsh
