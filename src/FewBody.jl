module FewBody

# Packages

import DocStringExtensions
using FewBodyHamiltonians: Operator, KineticTerm, PotentialTerm, Hamiltonian,
    UnitSystem, Kinetic, Coulomb, Gaussian, ManyBodyGaussian, Oscillator, Custom,
    Tensor, SpinOrbit

export Operator, KineticTerm, PotentialTerm, Hamiltonian, UnitSystem,
    Kinetic, Coulomb, Gaussian, ManyBodyGaussian, Oscillator, Custom, Tensor, SpinOrbit

"""
$(DocStringExtensions.TYPEDSIGNATURES)

Return a friendly greeting.

# Examples

```jldoctest
julia> FewBody.hello()
"Hello, World!"
```
"""
function hello()
    return "Hello, World!"
end

end
