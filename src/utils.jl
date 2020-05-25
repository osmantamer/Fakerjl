curr_path = @__DIR__

function getrandom(select::Array)
    return select[rand(1:length(select))]
end

# Prints possible languages
function getlanguages()
    possible_languages = "$curr_path/data"
    return join(readdir(possible_languages), ", ")
end

function typeoftoken(token::SubString)
    return token[1] == '%' && token[end] == '%' ? "function" : "default"
end
