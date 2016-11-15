# AYUDAME: Refactoriza buscando elegancia 

def squared_primes(array)
 require 'prime'
 new_array = []
 Prime.first(100) #= []
 if count(find(array)) do |prime|
  new_array << prime
end

end
def find(array)
   array.find_all{|x| (2..x-1).select(){|i| x % i == 0}}
   p array
end

def count(array)
  array.count == 0
  array.map{|p| p * p}
end

puts squared_primes([1, 3, 4, 7, 42]) #== [1, 9, 49]