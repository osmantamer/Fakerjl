using Feyk
using Test

Feyk.init()

@testset "person test" begin
    @test typeof(Feyk.firstname()) == String
    @test typeof(Feyk.firstmalename()) == String
    @test typeof(Feyk.firstfemalename()) == String
end

@testset "communication test" begin
    @test typeof(Feyk.phone()) == String
    @test typeof(Feyk.email()) == String
end
