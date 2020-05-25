module Feyk
include("Person.jl")
include("Communication.jl")
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
        numlines = readlines(gen.resrc[file])
        return length(numlines) > 0 ? numlines : error("File is empty!")
    catch SystemError
        return error("File does not exist!")
    end
end

function genericgenerator(pre::String)
    x = readsource(pre)
    randomline = getrandom(x)
    regex = r"{{.*?}}"
    matches = eachmatch(regex, randomline)
    for m in matches
        tokentype = typeoftoken(m.match[3:end-2])
        if tokentype == "function"
            expr = Meta.parse(m.match[4:end-3])
            evl = eval(expr)
            randomline = replace(randomline, regex => evl, count=1)
        else
            file = String(m.match[3:end-2])
            output = genericgenerator(file)
            randomline = replace(randomline, regex => output, count=1)
        end
    end
    return randomline
end

end # end of module
