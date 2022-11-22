# frozen_string_literal: true

require_relative 'calc'

c1 = Circle.new(6.3, 7.1, 9.25)
c1.show_info
puts "Площадь окружности: #{c1.calculate_area.round(5)}"

s1 = Sphere.new(-5, -18, 30.9, 11)
s1.show_info
puts "Объем шара: #{s1.calculate_volume.round(5)}"
