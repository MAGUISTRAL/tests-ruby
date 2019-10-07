
def add(n,m)
  return ( n + m )
end

def subtract(n,m)
return ( n - m )
end


def sum(tab)
return tab.inject(0, :+) || 0
end


def multiply (n,m)
return n * m
end


def power ( n,m )
return n ** m
end


# http://en.wikipedia.org/wiki/Factorial
def factorial(n)
return (1..n).inject(:*) || 1
end



# rspec spec/02_calculator_spec.rb
