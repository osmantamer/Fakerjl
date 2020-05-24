using Feyk

function firstmalename()
    return Feyk.genericgenerator("person_first_name_male")
end

function firstfemalename()
    return Feyk.genericgenerator("person_first_name_female")
end

function firstname()
    rand(Bool) ? firstmalename() : firstfemalename()
end

function lastmalename()
    return Feyk.genericgenerator("person_last_name_male")
end

function lastfemalename()
    return Feyk.genericgenerator("person_last_name_female")
end

function lastname()
    return Feyk.genericgenerator("person_last_name")
end

function prefixmale()
    return Feyk.genericgenerator("person_prefix_male")
end

function prefixfemale()
    return Feyk.genericgenerator("person_prefix_female")
end

function prefix()
    return Feyk.genericgenerator("person_prefix")
end

function gender()
    return rand(Bool) ? "male" : "female"
end
