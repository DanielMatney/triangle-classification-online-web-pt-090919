class Triangle
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      begin
        raise TriangleError
        puts error.message
      end
    end
  end
  
  def kind
    if @side1 != 0 && @side2 != 0 && @side3 != 0
      if @side1 == @side2 && @side1 == @side3 && @side1 != 0
        return :equilateral
      end
      if @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        return :isosceles
      end
      return :scalene
    end
    
  end
  
  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end
  
end
