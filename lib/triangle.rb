class Triangle
  
  def initialize one, two, three
    @one = one
    @two = two
    @three = three
  end

  attr_accessor :one, :two, :three

  def kind

    check_triangle

    if @one == @two && @two == @three && @three == @one
      return :equilateral
    elsif @one == @two || @two == @three || @three == @one
      return :isosceles
    else
      return :scalene
    end

  end 

  class TriangleError < StandardError

    def message
      "The sides entered are not of a valid triangle"
    end

  end

  private

  def check_triangle
    if @one <= 0 || @two <= 0 || @three <= 0 || (@one + @two) <= @three || (@one + @three) <= @two ||( @two + @three) <= @one
      raise TriangleError
    end
  end
    
end

tria = Triangle.new(1,1,3)
# tria.kind