<!--
SPDX-FileCopyrightText: 2026 StepUp Talk AUTHORS (https://github.com/reproducible-reporting/2026-talk-stepup-rse)
SPDX-License-Identifier: CC-BY-4.0
-->

# Software Environment for Building the StepUp Talk

## Requirements

You need a Linux environment with the `curl` command installed.
The `./setup.sh` script will bootstrap a minimal self-contained Python environment
and install StepUp and other dependencies to rebuild the talk from scratch.

The slides are built with [Animo](https://typst.app/universe/package/animo),
a Typst presentation package.
It is assumed that you have typst 0.15.0 installed on your system.

## Getting started

Clone the repository (or fork it and clone your fork):

```bash
git clone git@github.com:reproducible-reporting/2026-talk-stepup-rse.git
cd 2026-talk-stepup-rse
```

Create the Python environment with the `setup.sh` script:

```bash
./setup.sh
```

This will download and install [uv](https://docs.astral.sh/uv/)
and create a virtual environment in the `.venv` directory.

### Working in the StepUp environment

Before you can run `stepup build` (or `sb`) or use other packages,
you need to activate the environment.

A subshell is the simplest robust way to activate the environment.

```bash
./shell.sh
```

(This script is created by the `setup.sh` script.)
When you exit the subshell, you will return to your original environment.

The more traditional `source .venv/bin/activate` command is not recommended,
as it does not allow for customization.
In addition, exiting the shell offers a cleaner way to return to the original environment.

For those who prefer to use [`direnv`](https://direnv.net/), a `.envrc` file is also created that activates the environment when you `cd` into the repository.

### Rebuilding the talk

The [`workflow/`](workflow/) directory contains the full source material for the talk,
and a workflow definition to rebuild most results from scratch.
After activating the environment, you can rebuild the talk with the following commands:

```bash
cd workflow/
sb
```

One Typst source compiles to three outputs:
`slides.html` is the animated deck for a browser,
`slides.pdf` is the static presentation with one page per subslide,
and `handout.pdf` has one page per slide.
