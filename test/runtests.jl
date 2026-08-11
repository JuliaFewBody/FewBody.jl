using FewBody
using Aqua
using Test

@testset "Aqua.jl" begin
    Aqua.test_all(FewBody)
end

@static if get(ENV, "JET_TEST", "true") == "true"
    import JET

    @testset "JET.jl" begin
        JET.test_package(FewBody; target_modules = (FewBody,))
    end
end

@testset "FewBody.hello" begin
    @test FewBody.hello() == "Hello, World!"
end
