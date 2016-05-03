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

  def pizza_job

    if @energy != 0
      @energy -= 2
      @gas -= 1
      pizza_job_rand = rand(1..2)
        if pizza_job_rand == 1
        @lunar_rock += rand(1..3)
        puts "Normal day at the job"
        @feed_back
        elsif pizza_job_rand == 2
        @space_food += 1 
        @lunar_rock += rand(1..2) + 2 
        puts "¡Lucky day!"
        @feed_back
        end
    end
  
  end

  def astro_fun
    
    if energy != 0
      @energy -= 1
      @happy = true
      puts"#{@name} is having fun at"
    end
  
  end



end
