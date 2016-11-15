# def squared_primes(array)

#   method3(method2(method1)).map{|p| p*p}
# end

# def method1(array) 
#   array.find_all{|x| method2(x)}
# end

# def method2(num)
#   array.map{|num| (2..num-1)}.select(){|i| num % i == 0 }
# end

# def method3(num2)
#   num2.count == 0 
# end

# puts squared_primes([1, 3, 4, 7, 42])

def squared_primes(array)
  numbers = array.find_all do |x| 
    rango = (2..x-1)
  primes = rango.select do |i| 
    x % i == 0
  end
  primes.count == 0
  end
  numbers.map{|p| p*p}
end

puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]