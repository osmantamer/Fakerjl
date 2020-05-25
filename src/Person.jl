using Fakerjl

function firstmalename()
    return Fakerjl.genericgenerator("person_first_name_male")
end

function firstfemalename()
    return Fakerjl.genericgenerator("person_first_name_female")
end

function firstname()
    return rand(Bool) ? firstmalename() : firstfemalename()
end

function lastmalename()
    return Fakerjl.genericgenerator("person_last_name_male")
end

function lastfemalename()
    return Fakerjl.genericgenerator("person_last_name_female")
end

function lastname()
    return Fakerjl.genericgenerator("person_last_name")
end

function prefixmale()
    return Fakerjl.genericgenerator("person_prefix_male")
end

function prefixfemale()
    return Fakerjl.genericgenerator("person_prefix_female")
end

function prefix()
    return Fakerjl.genericgenerator("person_prefix")
end

function gender()
    return rand(Bool) ? "male" : "female"
end
