#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2026 StepUp Talk AUTHORS (https://github.com/reproducible-reporting/2026-talk-stepup)
# SPDX-License-Identifier: CC-BY-4.0

# Settings
PYTHON_VERSION=3.14

# Bootstrap uv
mkdir -p .venv/bin/
curl -LsSf https://astral.sh/uv/install.sh | env UV_UNMANAGED_INSTALL=".venv/bin" sh

# Install venv in the same .venv directory
export UV_PYTHON_INSTALL_DIR=.venv/uv-python
.venv/bin/uv venv --allow-existing --python=$PYTHON_VERSION --managed-python

# Install dependencies
.venv/bin/uv sync

# Install pre-commit hook
.venv/bin/uv pre-commit install

# Animo is not on Typst Universe yet, so `@preview/animo:0.1.0` is resolved from a
# repository-local package directory of a checkout of
# https://github.com/reproducible-reporting/animo next to this one.
# Override ANIMO_ROOT if the checkout lives somewhere else.
ANIMO_ROOT=${ANIMO_ROOT:-$(cd .. && pwd)/animo}
if [ ! -d "${ANIMO_ROOT}/.typst-packages/preview/animo" ]; then
  echo "Animo not found at ${ANIMO_ROOT}."
  echo "Clone https://github.com/reproducible-reporting/animo there and run its setup.sh,"
  echo "or set ANIMO_ROOT before running this script."
fi

# Create the shell.sh script
cat > shell.sh << EOF
#!/usr/bin/env bash
export PYTHONNOUSERSITE=1
export PROJECT_ROOT=$PWD
source .venv/bin/activate
export PYTHONPATH="\${PROJECT_ROOT}/workflow/lib:\${PYTHONPATH}"
export TYPST_PACKAGE_PATH="${ANIMO_ROOT}/.typst-packages"
$SHELL -i
EOF
head -n-1 shell.sh | tail -n+2 > .envrc
chmod +x shell.sh
