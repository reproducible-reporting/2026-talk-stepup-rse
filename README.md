<!--
SPDX-FileCopyrightText: 2026 StepUp Talk AUTHORS (https://github.com/reproducible-reporting/2026-talk-stepup)
SPDX-License-Identifier: CC-BY-4.0
-->

# Source Materials for the Talk "Raising the Bar: Reproducible Publication and Dataset Workflows with StepUp"

![License](https://img.shields.io/github/license/reproducible-reporting/2026-talk-stepup)
[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/reproducible-reporting/2026-talk-stepup/main.svg)](https://results.pre-commit.ci/latest/github/reproducible-reporting/2026-talk-stepup/main)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![Supported typst release](https://img.shields.io/badge/typst-0.15.1-239dad?logo=typst&logoColor=white)](https://github.com/typst/typst/releases/tag/v0.15.1)
[![Reproducible Reporting](https://raw.githubusercontent.com/reproducible-reporting/.github/main/profile/logo.svg)](https://github.com/reproducible-reporting)

## Abstract

(248 / 250 words)

Scientific publishing faces a growing authenticity crisis:
paper mills, manipulated figures and fabricated data are becoming increasingly difficult to detect.
Instead of engaging in an endless battle of detection, we propose raising the bar for reproducibility as the antidote.
Typically, an article preserves only a small fraction of the underlying work.
Even archived data and scripts rarely provide an executable path from raw data to the final manuscript.
Publishing the entire process turns reproducibility from a noble aspiration into a concrete safeguard:
authentic work becomes recognizable by the publication workflow it shares transparently.

StepUp is an open-source tool that facilitates this process.
It treats a publication or a dataset as if it were a software build.
Every figure, table and archive is generated from raw data and source files.
Because the workflow grows while writing instead of being reconstructed afterwards,
it becomes part of the shared, version-controlled record of the work.
We demonstrate StepUp with two examples:
(i) the slides of this talk, which will be edited and rebuilt live,
and (ii) a dataset of simulation trajectories and notebooks,
packaged and updated on Zenodo in a single run.

StepUp has also had an unexpected effect.
By incrementally developing publication workflows,
we began tackling publications and datasets far more ambitious than we could have imagined before.
Reproducibility, often perceived as an extra burden, turned out to be an enabler.
For research software engineers,
this shows how established software engineering practices can make reproducible,
FAIR research both achievable and rewarding.

## Git Repository Overview

This repository contains the Typst source of the slides,
all scripts that generate the figures and the data behind them,
and a [StepUp](https://reproducible-reporting.github.io/stepup-core/) workflow

- [`AUTHORS.md`](AUTHORS.md) for the list of contributors and their affiliations.
- [`REUSE.toml`](REUSE.toml) for the SPDX license information.
- [`setup.md`](setup.md) for instructions to set up the software environment,
  using [`setup.sh`](setup.sh) and rebuild the talk from source with StepUp and typst.
- The [`workflow/`](workflow/) directory is organized as follows:
  - TODO
  - ...

## License

This repository is licensed under the [Creative Commons CC-BY-4.0 License](https://creativecommons.org/licenses/by/4.0/).
