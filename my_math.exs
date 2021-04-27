defmodule MyMath do
    def fib(0) do 0 end 
    def fib(1) do 1 end
    def fib(n) do fib(n-1) + fib(n-2) end
    
    def fac(0) do 1 end
    def fac(n) do n * fac(n-1) end
    
    def pow(b,1) do b end
    def pow(b,e) do b * pow(e-1) end
end
IO.puts "Fibonacci (10): #{MyMath.fib(10)}"
IO.puts "Factorial (3): #{MyMath.fac(3)}"
IO.puts "Pow 2^(3): #{MyMath.pow(2,3)}"
