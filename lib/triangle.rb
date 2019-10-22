class Triangle
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if @side1 == @side2 && @side1 == @side3 && @side1 != 0
      return :equilateral
    end
    if @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      return :isosceles
    end
    raise TriangleError
    if @side1 == 0 || @side2 == 0 || @side3 == 0
      raise TriangleError
    end
    return :scalene
  end
  
  class TriangleError < StandardError
  end
  
end
