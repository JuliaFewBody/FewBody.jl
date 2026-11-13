```@meta
CurrentModule = FewBody
```

# User Guide

Before starting the tutorial, complete the [Installation](@ref) section. Feature requests and bug reports are handled through GitHub [Issues](https://github.com/JuliaFewBody/FewBody.jl/issues).

## Tutorial

```@example construction
using FewBody
H = Kinetic([1836.15267343, 1.0]) + Coulomb([+1.0, -1.0])
```

`Kinetic(masses)` fixes the particle ordering and removes center-of-mass motion.
`Coulomb(charges)` adds all pair interactions in atomic units. The constructors,
Hamiltonian algebra, and unit labels come directly from FewBodyHamiltonians, so
the resulting values have the same types when constructed through a solver
package.

## Other interactions

```@example construction
V = -2 * Gaussian(1, 2; exponent = 0.5) + 0.1 * Oscillator(1, 2)
H_gaussian = Kinetic([1.0, 1.0]) + V
```

The shared API also includes `ManyBodyGaussian`, `Custom`, `Tensor`, and
`SpinOrbit`. A `UnitSystem` labels the input convention; no unit conversion is
performed.

## Choosing a solver

Load the numerical solver separately and use its entry points:

- [FewBodyECG.jl](https://github.com/JuliaFewBody/FewBodyECG.jl) provides
  explicitly correlated Gaussian methods and supports the shared physical terms
  through its analytic or numerical matrix elements.
- [FewBodyVMC.jl](https://github.com/JuliaFewBody/FewBodyVMC.jl) provides
  variational Monte Carlo and currently accepts atomic-unit kinetic and Coulomb
  terms with a supplied trial wavefunction.
- [TwoBody.jl](https://github.com/JuliaFewBody/TwoBody.jl) provides numerical
  solvers for two-particle systems; see its documentation for supported potentials.

FewBody supplies construction without adding a common solver wrapper. The legacy
`FewBody.hello()` greeting remains available for compatibility.
