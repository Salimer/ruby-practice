# frozen_string_literal: true

# class for the triangle challenge
class TriangleType
  def self.result(a, b, c)
    unless valid_triangle?(a, b, c)
      puts 'not triangle'
      return
    end

    if a == b && b == c
      puts 'equi'
    elsif a == b || b == c || a == c
      puts 'iso'
    else
      puts 'sca'
    end
  end

  def self.valid_triangle?(a, b, c)
    a.positive? && b.positive? && c.positive? &&
      a + b > c && b + c > a && a + c > b
  end
end

TriangleType.result(3, 3, 3)
TriangleType.result(3, 4, 4)
TriangleType.result(3, 4, 5)
TriangleType.result(1, 2, 3)
