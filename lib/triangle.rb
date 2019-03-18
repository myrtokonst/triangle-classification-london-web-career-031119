class Triangle
attr_accessor :x, :y, :z
def initialize (x,y,z)
  @x = x
  @y = y
  @z = z
end 

def kind 
  if x < 0 || y < 0 || z <0 
    raise TriangleError
    elsif x == 0 || y == 0 || z == 0 
    raise TriangleError
    elsif x+y <= z || x+z <= y || y+z <= x 
    raise TriangleError
  elsif x==y && x==z
    return :equilateral
  elsif y==z 
    return :isosceles
  elsif x==z 
    return :isosceles
  elsif x==y 
    return :isosceles
  elsif x!=y && y!=z && x!=z 
    return  :scalene
  end
end 



class TriangleError< StandardError
end 
end
