# frozen_string_literal: true

require_relative 'calc'

Calc.create_and_fill

f_file_content, p_file_content = *Calc.transfer_data(5)

puts 'Способ группировки 5 через 5'
puts "F.txt:\n#{f_file_content}\n\n"
puts "P.txt:\n#{p_file_content}\n\n"

f_file_content, p_file_content = *Calc.transfer_data(20)
puts 'Способ группировки 20 через 20'
puts "F.txt:\n#{f_file_content}\n\n"
puts "P.txt:\n#{p_file_content}\n\n"
