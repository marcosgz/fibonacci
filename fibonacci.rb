# This is a Ruby script that calculates the nth Fibonacci number.

# class Fibonacci
#   def self.fib(n)
#     n < 2 ? n : fib(n - 1) + fib(n - 2)
#   end
# end

# class Fibonacci
#   @cache = {}

#   def self.fib(n)
#     return @cache[n] if @cache[n]

#     @cache[n] = n < 2 ? n : fib(n - 1) + fib(n - 2)
#   end
# end

# class Fibonacci
#   @cache = [0, 1]

#   def self.fib(n)
#     return @cache[n] if @cache[n]

#     @cache[n] = fib(n - 1) + fib(n - 2)
#   end
# end


class Fibonacci
  @cache = [0, 1]

  def self.fib(n)
    @cache[n] ||= fib(n - 1) + fib(n - 2)
  end
end