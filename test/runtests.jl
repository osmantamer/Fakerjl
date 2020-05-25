using Fakerjl
using Test
using SafeTestsets

@safetestset "Fakerjl Test" begin include("persontest.jl") end

Fakerjl.init()

println(Fakerjl.firstname())
println(Fakerjl.firstmalename())
println(Fakerjl.firstfemalename())
println(Fakerjl.phone())
println(Fakerjl.email())
