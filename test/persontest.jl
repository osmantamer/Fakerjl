using Feyk

macro catcherror(func)
    quote
        try
            println($func)
            @assert typeof($func) == String
        catch
            error("Error in generating $func")
        end
    end
end

function persontest()
    @catcherror Feyk.firstname()
    @catcherror Feyk.firstmalename()
    @catcherror Feyk.firstfemalename()
    return true
end


macro unless(test_expr, branch_expr)
  quote
    if !$test_expr
      $branch_expr
    end
  end
end
