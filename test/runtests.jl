using Feyk
using Test
using SafeTestsets

@safetestset "Feyk Test" begin include("persontest.jl") end

Feyk.init()

println(Feyk.firstname())
println(Feyk.firstmalename())
println(Feyk.firstfemalename())
println(Feyk.phone())
println(Feyk.email())
