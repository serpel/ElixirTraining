defmodule MyMath do
    def fib(0) do 0 end 
    def fib(1) do 1 end
    def fib(n) do fib(n-1) + fib(n-2) end
    
    def fac(0) do 1 end
    def fac(n) do n * fac(n-1) end
end
IO.puts "Fibonacci (10): #{MyMath.fib(10)}"
IO.puts "Factorial (3): #{MyMath.fac(3)}"
