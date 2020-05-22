using Feyk
using Test

Feyk.init()

@testset "Feyk.jl" begin
    @test typeof(Feyk.malename()) == String
end
