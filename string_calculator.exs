defmodule StringCalculator do
 def sum() do 0 end
 #weird solution because guards not support string operations
 def sum(input) when bit_size(input) == 8 do String.to_integer(input) end
 def sum(input) do  
    String.split(input, ~r/[^-0-9]/, trim: true) 
    |> Enum.map(&String.to_integer/1)
    |> makeValidations
    |> Enum.sum
 end
 defp makeValidations(numbers) do 
    Enum.filter(numbers, fn (n) -> n < 0 end)
    |> check_negative_numbers
    numbers
 end
 defp check_negative_numbers(numbers) when length(numbers) > 0 do 
    raise ArgumentError, message: "negatives not allowed: " <> Enum.join(numbers, ",") 
 end
 defp check_negative_numbers(numbers) when numbers == [] do nil end
end
#alpha 
IO.puts StringCalculator.sum() #0
IO.puts StringCalculator.sum("3") #3
IO.puts StringCalculator.sum("1,2") #3
IO.puts StringCalculator.sum("1,2,3") #6
IO.puts StringCalculator.sum("1\n2,3") #6
IO.puts StringCalculator.sum("//;\n1;2") #3
#IO.puts StringCalculator.sum("1,2,-3") #negatives not allowed: -3
#IO.puts StringCalculator.sum("1,2,-3,4,-1") #negatives not allowed: -3,-1
