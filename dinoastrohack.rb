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
  #Coloquen esto después de cada método en el juego
  def stats
    system("clear")
    puts "The best astronaut ever - #{@name.upcase}"
    puts "Raw food                - #{@space_food}"
    puts "Lunar Rocks             - #{@lunar_rocks}"
    puts "Gas                     - #{@gas}"
    puts "Energy                  - #{@energy}"
    puts "Am I happy?             - #{@happy}"
  end

  def dead
    puts "WE ARE TRULY SORRY FOR YOUR LOSS..."
  end

  def party
    if @energy > 0
      @energy = @energy -= 1
    puts "Yayyyy"
    @happy = !@happy
    stats
    else
      dead 
    end
  end

  def get_gas
    if @lunar_rocks > 4
      @gas += 4
    else
      puts "Not enough fonds..."
    end
    stats    

  def pizza_job

    if @energy != 0
      @energy -= 2
      @gas -= 1
      pizza_job_rand = rand(1..2)
        if pizza_job_rand == 1
        @lunar_rock += rand(1..3)
        puts "Normal day at the job"
        stats
        elsif pizza_job_rand == 2
        @space_food += 1 
        @lunar_rock += rand(1..2) + 2 
        puts "¡Lucky day!"
        stats
        end
    end
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
