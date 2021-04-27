defmodule MyString do  
    def join([], _) do "" end
    def join([head|tail], character) when length(tail) == 0 do "#{head}#{join(tail, character)}" end
    def join([head|tail], character) do "#{head}#{character}#{join(tail, character)}" end 
end
IO.puts "Join [1,2,3], 'a' " <> MyString.join([1,2,3], "a") #1a2a3 (No symbol at the end. I'm using a guard to avoid this situation)
