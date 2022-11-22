# frozen_string_literal: true

# Класс, описывающий окружность
class Circle
  def initialize(center_x, center_y, radius)
    @center_x = center_x
    @center_y = center_y
    @radius = radius
  end

  def show_info
    puts "Координаты центра окружности: #{@center_x}, #{@center_y}"
    puts "Радиус шара: #{@radius}"
  end

  def calculate_area
    Math::PI * @radius**2
  end
end

# Класс, описывающий шар
class Sphere < Circle
  attr_accessor :center_x, :center_y, :center_z, :radius

  def initialize(center_x, center_y, center_z, radius)
    super(center_x, center_y, radius)
    @center_z = center_z
  end

  def show_info
    puts "Координаты центра шара: #{@center_x}, #{@center_y}, #{@center_z}"
    puts "Радиус шара: #{@radius}"
  end

  def calculate_volume
    0.75 * Math::PI * @radius**3
  end
end
