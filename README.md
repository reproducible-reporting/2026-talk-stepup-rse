<!--
SPDX-FileCopyrightText: 2026 StepUp Talk AUTHORS (https://github.com/reproducible-reporting/2026-talk-stepup)
SPDX-License-Identifier: CC-BY-4.0
-->

# Source Materials for the Talk "Rerun, Don't Redo: Executable Publications and Datasets with StepUp"

![License](https://img.shields.io/github/license/reproducible-reporting/2026-talk-stepup)
[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/reproducible-reporting/2026-talk-stepup/main.svg)](https://results.pre-commit.ci/latest/github/reproducible-reporting/2026-talk-stepup/main)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![Supported typst release](https://img.shields.io/badge/typst-0.15.1-239dad?logo=typst&logoColor=white)](https://github.com/typst/typst/releases/tag/v0.15.1)
[![Reproducible Reporting](https://raw.githubusercontent.com/reproducible-reporting/.github/main/profile/logo.svg)](https://github.com/reproducible-reporting)

This is the source repository for a contribution to [RSE26](https://www.vibconferences.be/events/research-software-engineering-day-4th-edition)
taking place in Ghent (Zwijnaarde) on Tuesday 15 December 2026

## Abstract

(249 / 250 words)

Although reproducibility is a cornerstone of science,
our publication practices do not reflect this.
The main deliverable is still an article, a PDF to be read.
At best, it comes with a data deposit and some scripts.
Reproducibility then means that others can reach similar results and the same conclusions with sufficient effort.
Often, however, this effort is prohibitive, or essential pieces are missing.
Even with a complete deposit, repeating the analysis or trying a what-if scenario means redoing work already done.
This need not be the case.
Data processing, analysis, plotting and typesetting now all happen on a computer and can therefore be captured as a program that anyone can rerun.

We present StepUp, an open-source tool that lets researchers develop publications and datasets as workflows.
A single command executes the entire process from raw data to the final product, such as a manuscript ready for submission or a dataset uploaded to Zenodo.
StepUp makes no decisions for the authors; it records their decisions in executable form.
Because the workflow grows along with the research, rather than being reconstructed afterwards, changing an input automatically updates every figure, table and file depending on it.
StepUp combines the dynamic, data-driven workflows of scientific tools (Snakemake, Nextflow) with the fast incremental rebuilds of software build systems (Ninja, Meson).

We will demonstrate StepUp live and discuss its use in recent publications and datasets.
Our experience shows that reproducibility,
often perceived as an extra burden,
can become an enabler of more ambitious research.

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
