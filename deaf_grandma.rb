def deaf_grandma
     bye = 0
    
  while bye < 3
    puts "¿Qué quieres contarle a la abuela?"
    input = gets.chomp

    if input == "BYE TQM"
      bye += 1
    end

    if input != input.upcase
      puts "NO, NO DESDE 1983"
    else
      puts "HUH?! NO TE ESCUCHO, HIJO!"
    end
  end
  while bye = 3
    puts "D'oh, adios mijito"
    break ; end


end
deaf_grandma