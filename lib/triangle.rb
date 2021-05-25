class Triangle
  # write code here

  attr_reader :x, :y, :z
  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    triangle_validation
    if x == y && y == z
    :equilateral
    elsif x == y || y == z || x == z
      :isosceles
    else 
      :scalene
    end
  end

  def triangle_validation
    legal = [(x + y > z), (x + z > y), (y + z > x)]
    [x, y, z].each do |side| 
      legal << false if side <= 0
    raise TriangleError if legal.include?(false)
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
  
end
