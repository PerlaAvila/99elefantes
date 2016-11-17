def prime_factors(integer)
  num = integer
  array_factors = []
  until num == small_prime(num)
    prime = small_prime(num)
    num = num / prime
    array_factors << prime
  end
  array_factors << num
end

def small_prime(integer)
  (2...integer).each {|i| return i if integer % i == 0 }
  integer
end
#test
p prime_factors(4) 
p prime_factors(9) 
p prime_factors(12) 
p prime_factors(34) 