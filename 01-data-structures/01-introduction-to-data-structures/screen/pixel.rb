# Pixels require three color values: red, green, and blue.
# Pixel colors red, green, and blue values must be greater than zero and less than 255.
# If  a value less than zero is specified, default to zero. If a value greater than 255 is specified, default to 255.
# Pixels also require a coordinate location: x and y.

# class called Pixel gets created that has properties red, blue, green, x, and y
class Pixel
  attr_accessor :red
  attr_accessor :green
  attr_accessor :blue
  attr_accessor :x
  attr_accessor :y

  def initialize(red, green, blue, x, y)
    red, green, blue, x, y = [], [], [], [], []
  end

  private

  def validate_color(color)
    if red > 0 
      if red < 255
        return red
      else
        red == 255
      end
    else  
      red == 0
    end

    if blue > 0
      if blue < 255
        return blue
      else 
        blue == 255
      end
    else 
      blue == 0
    end

    if green > 0
      if green < 255
        return green
      else 
        green == 255
      end
    else 
      green == 0
    end
  end

end
