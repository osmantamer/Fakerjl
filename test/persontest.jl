using Fakerjl
using Test

Fakerjl.init()

@testset "person test" begin
    @test typeof(Fakerjl.firstname()) == String
    @test typeof(Fakerjl.firstmalename()) == String
    @test typeof(Fakerjl.firstfemalename()) == String
end

@testset "communication test" begin
    @test typeof(Fakerjl.phone()) == String
    @test typeof(Fakerjl.email()) == String
end
