module Feyk
include("Person.jl")
include("utils.jl")

mutable struct Generator
    resrc::Dict{String, String}
    lang::String
end

curr_path = @__DIR__

function init(src::String=curr_path, lang::String="en_US")
    resource = Dict{String, String}()
    all_files = readdir("$curr_path/data/$lang")
    [resource[file]="$curr_path/data/$lang/$file" for file = all_files]
    global gen = Generator(resource, lang)
    return gen
end

function setlanguage!(newlang::String)
    gen.lang = newlang
end

function setsource!(newsource::String)
    empty!(gen.resrc)
    resource = Dict{String, String}()
    all_files = readdir(newsource)
    [resource[file]="$newsource/$file" for file = all_files]
    gen.resrc = resource
end

function readsource(file::String)
    try
        println(gen.resrc[file])
        numlines = readlines(gen.resrc[file])
        return length(numlines) > 0 ? numlines : error("File is empty!")
    catch SystemError
        return error("File does not exist!")
    end
end

function genericgenerator(pre::String)
    x = readsource(pre)
    return getrandom(x)
end

end # end of module
