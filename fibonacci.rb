# frozen_string_literal: true

# Example of fibonacci sequence without dynamic memory allocation
#
# class Fibonacci
#   def self.[](n)
#     n < 2 ? n : self[n - 1] + self[n - 2]
#   end
# end

# This is a Ruby script that calculates the nth Fibonacci number.
class Fibonacci
  @cache = {}

  def self.[](n)
    return @cache[n] if @cache[n]

    @cache[n] = n < 2 ? n : self[n-1] + self[n-2]
  end
end
