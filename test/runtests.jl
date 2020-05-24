using Feyk
using Test
include("persontest.jl")

Feyk.init()

@testset "Feyk.jl" begin
    @test persontest() == true
end
