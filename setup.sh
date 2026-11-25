#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2026 StepUp Talk AUTHORS (https://github.com/reproducible-reporting/2026-talk-stepup-rse)
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
.venv/bin/uv run pre-commit install

# Create the shell.sh script
cat > shell.sh << EOF
#!/usr/bin/env bash
export PYTHONNOUSERSITE=1
export PROJECT_ROOT=$PWD
source .venv/bin/activate
export PYTHONPATH="\${PROJECT_ROOT}/workflow/lib:\${PYTHONPATH}"
$SHELL -i
EOF
head -n-1 shell.sh | tail -n+2 > .envrc
chmod +x shell.sh
