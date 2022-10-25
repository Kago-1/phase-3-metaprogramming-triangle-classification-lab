require 'pry'

class Triangle
  #write code here
  def initialize(side1,side2,side3)
    @@sides = [side1,side2,side3]
    @@sides.sort!
  end

  def kind
    if @@sides.any?{|side| side <=0} || ((@@sides[0]+@@sides[1]) <= @@sides[2])
     raise TriangleError
  elsif @@sides.uniq.length == 1
    :equilateral
  elsif @@sides.uniq.length == 2
    :isosceles
  else
    :scalene
    end
  end

  class TriangleError < StandardError 
  end

end

#binding.pry

# arr1 = [1,1,1,2,3,4,576,5,8]
# p arr1.uniq.sort
# p arr1.sort
