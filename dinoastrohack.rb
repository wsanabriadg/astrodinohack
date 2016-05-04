class AstroDino

  def initialize
    @energy = rand(4)+1 + 2
    @happy = false
    puts "Insert your astro-dinosaur's name: "
    @name = gets.chomp
    @space_food = rand(5)
    @lunar_rocks = rand(3) + 1
    @gas = 4
  end

  def stats
    system("clear")
    puts "The best astronaut ever - #{@name.upcase}"
    puts "Raw food                - #{@space_food}"
    puts "Lunar Rocks             - #{@lunar_rocks}"
    puts "Gas                     - #{@gas}"
    puts "Energy                  - #{@energy}"
    puts "Am I happy?             - #{@happy}"
  end

  def dead #we'll never call this by ourselves
    if @energy <= 0
      puts "WE ARE TRULY SORRY FOR YOUR LOSS..."
      abrupt
    end
  end

  def pty #party
    if @energy > 0
      @energy = @energy -= 1
    @happy = true
    stats
    puts "That party was awesome!"
    else
      dead 
    end
  end

  def gg #get gas
    if @lunar_rocks > 4
      @gas += 4
      @energy -= 1
      @lunar_rocks -= 4
      stats
      puts "Take your gas!"
    else
      stats
      puts "Not enough fonds..."
    end
  end

  def pj #pizza job
    if @energy > 2 && @gas >= 1
      @energy -= 2
      @gas -= 1
      pizza_job_rand = rand(1..2)
        if pizza_job_rand == 1
          @lunar_rocks += rand(1..3)
          stats
          puts "Normal day at the job"
        elsif pizza_job_rand == 2
          @space_food += 1
          @lunar_rocks += rand(1..2) + 2
          stats
          puts "¡Lucky day!"
        end
    elsif @energy == 0
      dead
    else
      stats
      puts "You don't have enough energy or gas to work"
    end
  end

  def bh #bounty hunting
    if @energy > 3
      @energy = @energy -= 3
    rand_bh = rand(1..3)    
      if rand_bh == 1
        @gas = @gas + rand(3) + 1
        stats
        puts "You've found yourself some gas!"
      elsif rand_bh == 2
        @lunar_rocks = @lunar_rocks + rand(3) + 1
        stats
        puts "To the moon and beyond!"
      elsif rand_bh == 3
        @space_food = @space_food + rand(3) + 1
        stats
        puts "Some food to your stash!"
      end
    elsif @energy == 0
      dead
    else
      stats
      puts "You don't have enough energy to go bounty hunting..."
    end
  end

  def cf #cook food
    if @energy > 2 && @space_food > 0
      @energy = @energy -= 1
      @energy = @energy + @space_food
      @space_food = 0 
      stats
      puts "Nice cooking!"
    elsif @energy == 0
      dead
    else
      "You don't have enough energy or food to cook..."
    end
  end

end

f = AstroDino.new
f.stats