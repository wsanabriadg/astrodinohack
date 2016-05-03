class Astrodino

  def initialize
  
    @energy = rand(2) + 2
    #@inventory = 
    @happy = false
    puts"Put your astro-dinosaur's name: "
    @name = gets.chomp
    @space_food = rand(5)
    @lunar_rock = rand(3) + 1
    @gas = 5

  end

end
