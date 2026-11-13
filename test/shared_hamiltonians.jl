import FewBodyHamiltonians

@testset "shared Hamiltonian construction" begin
    for name in (
            :Operator, :KineticTerm, :PotentialTerm, :Hamiltonian, :UnitSystem,
            :Kinetic, :Coulomb, :Gaussian, :ManyBodyGaussian, :Oscillator, :Custom,
            :Tensor, :SpinOrbit,
        )
        @test name in names(FewBody)
        @test getproperty(FewBody, name) === getproperty(FewBodyHamiltonians, name)
    end
    H = Kinetic([1.0, 2.0]) + Coulomb([1.0, -1.0]) +
        2 * Gaussian(1, 2; exponent = 0.5) + Oscillator(1, 2)
    @test H isa FewBodyHamiltonians.Hamiltonian
    @test length(H) == 4
    @test FewBodyHamiltonians.kinetic(H).masses == [1.0, 2.0]
    @test FewBodyHamiltonians.validate(H) === H
    @test H[2].coefficient == -1.0
end
