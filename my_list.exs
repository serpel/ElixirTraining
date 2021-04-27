defmodule MyList do
    def sum([]) do 0 end
    def sum([head|tail]) do head + sum(tail) end
end

IO.puts "ListSum [1,2,3] #{MyList.sum([1,2,3])}"
