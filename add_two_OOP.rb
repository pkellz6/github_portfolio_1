# Add 2 to the number.
class NumAddTwo
  def initialize(number)
    @number=number
  end
  def add_two
    if @number.respond_to? :+
      if @number.respond_to? :push
        @number.push 2
      elsif @number.respond_to? :concat
        @number.concat "2"
      else
        @number + 2
      end
    end
  end
end

def test_add_two
  num1 = NumAddTwo.new (1)
  p num1.add_two

  num2 = NumAddTwo.new(1)
  p num2.add_two

  num3 = NumAddTwo.new(1.0)
  p num3.add_two

  num4 = NumAddTwo.new(nil)
  p num4.add_two

  num5 = NumAddTwo.new({})
  p num5.add_two

  num6 = NumAddTwo.new([])
  p num6.add_two

  num7 = NumAddTwo.new(false)
  p num7.add_two
  
  num8 = NumAddTwo.new("")
  p num8.add_two
end

test_add_two
