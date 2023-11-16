set dotenv-load

# Format & test
default: fix check test

# Run all possible auto-fixes with ruff & black
fix:
  black src tests --quiet
  ruff check src tests --fix

# Check if ruff, black, or mypy catch any issues
check:
  ruff check src tests
  black src tests --check
  just mypy

# Runs mypy on the codebase but uses dmypy to cache the results
# This speeds up mypy significantly on local runs
mypy:
  dmypy run -- --show-error-codes src tests

test:
  pytest tests

mongo-run MONGOLOG="mongod.log" MONGODBPATH="data/db": (mongo-setup MONGODBPATH)
  #!/usr/bin/env bash
  set -euxo pipefail
  trap "just debug-shutdown {{MONGOLOG}} {{MONGODBPATH}}; exit" SIGINT
  mongod --dbpath {{MONGODBPATH}} --fork --logpath {{MONGOLOG}}
  just run

mongo-setup MONGODBPATH:
  mkdir -p {{MONGODBPATH}}

mongo-shutdown MONGOLOG MONGODBPATH:
  pkill -f "mongod --dbpath {{MONGODBPATH}} --fork --logpath {{MONGOLOG}}"
  rm {{MONGOLOG}}
  rm -rf {{MONGODBPATH}} || echo "justfile unable to remove mongodb data directory, trying again with sudo" && sudo rm -rf {{MONGODBPATH}}
