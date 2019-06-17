class CoffeeError < StandardError
end
class NotFruitError < StandardError
end
class YearError < StandardError
end
class NameError < StandardError
end
class PastTimeError < StandardError
end
# PHASE 2
def convert_to_int(str)
  
    begin
    Integer(str)
    rescue ArgumentError => exception
      puts "cannot convert to int"
      puts "your input was *#{exception}*"
    ensure
      nil
    end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else 
    raise NotFruitError
  end 
end

def feed_me_a_fruit
  begin
    puts "Hello, I am a friendly monster. :)"

    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue CoffeeError
    puts "this is coffee, I WANT FRUIT!"
    retry
  rescue NotFruitError
    puts 'I SAID I WANT FRUIT'
  end
end  

# PHASE 4

class BestFriend
  attr_reader :fav_pastime
  def initialize(name, yrs_known, fav_pastime)
   if name.length <= 0
    raise NameError 
   end
    @name = name
    if yrs_known < 5
      puts "you guys are not best friends"
      raise YearError
    end
    @yrs_known = yrs_known
    if fav_pastime.length <= 0
    raise PastTimeError 
   end
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


