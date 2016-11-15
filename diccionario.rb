
def diccionario
  puts "Escribe una palabra"
  input = gets.chomp
  say = 'nil'
  counter = 0
  words = []
  words << input
while say != ''
  
  puts 'Escribe otra palabra(o presiona "enter" para finalizar): '
  talk = gets.chomp
  break if talk.chomp.empty?
  counter += 1
  words << talk
  
end
   puts "Felicidades tu diccionario tiene #{counter + 1} palabras"
   puts words
end #def

diccionario
