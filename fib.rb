# frozen_string_literal: true

def fib_rec(n)
  if n.zero?
    0
  elsif n == 1
    1
  else
    fib(n - 1) + fib(n - 2)
  end
end
