class Astrodino

  def initialize
    @energy = rand(2) + 2
    @happy = false
    puts "Put your astro-dinosaur's name: "
    @name = gets.chomp
    @space_food = rand(5)
    @lunar_rocks = rand(3) + 1
    @gas = 4
  end
  #Coloquen esto después de cada acción en el juego
  def stats(@happy, @name, @energy, @space_food, @lunar_rock)
    puts "The best astronaut ever - #{@name.upcase}"
    puts "Raw food                - #{@space_food}"
    puts "Lunar Rocks             - #{@lunar_rocks}"
    puts "Gas                     - #{@gas}"
    puts "Energy                  - #{@energy}"
    puts "Am I happy?             - #{}"
  end

end
