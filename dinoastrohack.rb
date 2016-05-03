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

  #Coloquen esto después de cada acción en el juego
  def stats(@happy, @name, @energy, @space_food, @lunar_rock)
    puts "The best astronaut ever - #{@name.upcase}"
    puts "Raw food                - #{@space_food}"
    puts "Lunar Rocks             - #{@lunar_rocks}"
    puts "Gas                     - #{@gas}"
    puts "Energy                  - #{@energy}"
    puts "Am I happy?             - #{}"
  end

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

  def astro_fun
    
    if energy != 0
      @energy -= 1
      @happy = true
      puts"#{@name} is having fun at the astro-club"
      stats
    end
  
  end



end
