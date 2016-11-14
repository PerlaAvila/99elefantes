class PERSON
  LIFE_stage = {childhood:12, teenager:19, adult:50}
  LEGAL_AGE = 18
  attr_accessor :name

    def initialize(name, age)
      @name = name
      @age = age
    end
    
    def age
      @age
    end

    def life_stage
      if @age < LIFE_stage[:childhood]
        :childhood
      elsif @age<LIFE_stage[:teenager]
        :teenager
      elsif @age<LIFE_stage[:adult] ; :adult
      else
        :elder
      end
    end

    def legal
      @age >= LEGAL_AGE 
    end
end


# Esta parte del código son pruebas. 
# Antes y después deben de imprimir puros "true"
fernando = PERSON.new("Fernando",5)
juan = PERSON.new("Juan",45)
laura = PERSON.new("Laura",87)
andrea = PERSON.new("Andrea",13)

p fernando.legal == false
p juan.legal == true
p laura.legal == true
p andrea.legal == false

p fernando.life_stage == :childhood
p juan.life_stage == :adult
p laura.life_stage == :elder
p andrea.life_stage == :teenager

p laura.age == 87
laura.name = "Ximena"
p laura.name == "Ximena"