# FewBody.jl

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://JuliaFewBody.github.io/FewBody.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://JuliaFewBody.github.io/FewBody.jl/dev/)
[![Citation](https://img.shields.io/badge/citation-BibTeX-778899)](CITATION.bib)
[![License](https://img.shields.io/github/license/JuliaFewBody/FewBody.jl)](LICENSE)
[![Build Status](https://github.com/JuliaFewBody/FewBody.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/JuliaFewBody/FewBody.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/JuliaFewBody/FewBody.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/JuliaFewBody/FewBody.jl)
[![Aqua QA](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)
[![JET Test](https://img.shields.io/badge/%F0%9F%9B%A9%EF%B8%8F_tested_with-JET.jl-233f9a)](https://github.com/aviatesk/JET.jl)
[![code style: runic](https://img.shields.io/badge/code_style-%E1%9A%B1%E1%9A%A2%E1%9A%BE%E1%9B%81%E1%9A%B2-black)](https://github.com/fredrikekre/Runic.jl)
[![ColPrac: Contributor's Guide on Collaborative Practices for Community Packages](https://img.shields.io/badge/ColPrac-contributor's%20guide-blueviolet)](https://github.com/SciML/ColPrac)

FewBody.jl provides the JuliaFewBody ecosystem's shared Hamiltonian construction
API. It re-exports the exact particle-indexed types from
[FewBodyHamiltonians.jl](https://github.com/JuliaFewBody/FewBodyHamiltonians.jl).
Use the resulting Hamiltonians with compatible solvers such as
[FewBodyECG.jl](https://github.com/JuliaFewBody/FewBodyECG.jl) and
[FewBodyVMC.jl](https://github.com/JuliaFewBody/FewBodyVMC.jl), according to each
solver's supported terms and units.

## Quick Start

Run the following command in the Julia REPL or a notebook:

```julia
import Pkg; Pkg.add(url="https://github.com/JuliaFewBody/FewBody.jl.git")
```

After installation, construct a two-particle Coulomb system in atomic units:

```julia
using FewBody
H = Kinetic([1836.15267343, 1.0]) + Coulomb([+1.0, -1.0])
```

`Kinetic` defines the particle ordering and removes center-of-mass motion.
Load the chosen solver package separately and pass it `H`; FewBody itself
provides construction rather than a solver entry point. `FewBody.hello()` remains
available for compatibility.

## Documentation

- Home: https://JuliaFewBody.github.io/FewBody.jl
- User Guide: https://JuliaFewBody.github.io/FewBody.jl/dev/user
- Developer Guide: https://JuliaFewBody.github.io/FewBody.jl/dev/developer
- API Reference: https://JuliaFewBody.github.io/FewBody.jl/dev/api
