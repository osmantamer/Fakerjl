using Feyk
using Test
include("person_test.jl")

Feyk.init()

@testset "Feyk.jl" begin
    @test testperson()
end
