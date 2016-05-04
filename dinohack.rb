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

  def bounting_hunter

  if @energy > 0
    @nergy = @energy -=3
  end
    @gas = rand(5) + 1
    @lunar_rock = rand(8) + 1
    @space_food = rand(3) + 1



  end
end
m=Astrodino.new
m.bounting_hunter
