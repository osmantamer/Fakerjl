using Feyk

macro catcherror(func)
    quote
        try
            @assert typeof($func) == String
        catch
            println("Error in generating first name")
        end
    end
end

function testperson()
    @catcherror Feyk.firstname()
    @catcherror Feyk.firstmalename()
    @catcherror Feyk.firstfemalename()
end


macro unless(test_expr, branch_expr)
  quote
    if !$test_expr
      $branch_expr
    end
  end
end
