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

FewBody.jl is a Julia package for solving quantum-mechanical few-body problems. It brings together the JuliaFewBody ecosystem under a common interface, providing tools for constructing few-body Hamiltonians and accessing complementary numerical approaches such as explicitly correlated Gaussian (ECG) and variational Monte Carlo (VMC) methods.

## Quick Start

Run the following command in the Julia REPL or a notebook:

```julia
import Pkg; Pkg.add(url="https://github.com/JuliaFewBody/FewBody.jl.git")
```

After installation, load the package and verify it works:

```julia
julia> import FewBody; FewBody.hello()
"Hello, World!"
```

## Documentation

- Home: https://JuliaFewBody.github.io/FewBody.jl
- User Guide: https://JuliaFewBody.github.io/FewBody.jl/dev/user
- Developer Guide: https://JuliaFewBody.github.io/FewBody.jl/dev/developer
- API Reference: https://JuliaFewBody.github.io/FewBody.jl/dev/api
