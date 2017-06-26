class Backpack

  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    clothing_added_to_backpack
    gym_shoes_are_added
    pack_lunch
  end

  def items
    @items
  end

#   Find a chunk of code that goes together, and give the concept a name.
# Make an empty method with that name.
# Call the method from the same place as the code you're moving.
# Cut the code from the old location to the new method. Make sure to bring any local variable assignments with you to the new method!

  def clothing_added_to_backpack
    # set up local variables used by rest of methods
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    if weather == 'rainy'
      rainy_weather
    elsif weather == 'cold'
      cold_weather
    else
      weather_not_specified
    end
  end

    # Ensure appropriate clothing is added to backpack

  def rainy_weather
    @items << 'pants'
    @items << 'shirt'
    @items << 'umbrella'
  end

  def cold_weather
    @items << 'pants'
    @items << 'shirt'
    @items << 'jacket'
  end

  def weather_not_specified
    @items << 'pants'
    @items << 'shirt'
  end

  def gym_shoes_are_added
    # Ensure gym shoes are added to backpack if it's a gym day
    # Gotta get to the gym on Mondays and Thursdays. Wait a sec...
    day_of_week = @attributes[:day_of_week]
    if day_of_week == 'monday' || day_of_week == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end
  end

  def pack_lunch
    # Bring a packed lunch on all weekdays
    day_of_week = @attributes[:day_of_week]
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    else
      # Used to bring snacks on weekend trips, but now I just buy 'em
      @items << 'snacks'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def packing_list
    pack_list = []
    pack_list << "Melinda, here's your packing list!"
    pack_list << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    pack_list << ""

    @items.each do |item|
      pack_list << "- #{item}"
    end
    pack_list.join("\n")
  end

end
