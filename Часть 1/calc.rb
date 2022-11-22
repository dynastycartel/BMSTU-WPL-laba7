# frozen_string_literal: true

# Класс, содержащий методы для вычислений
class Calc
  def self.create_and_fill
    f_file = File.new('F.txt', 'w')
    arr = []
    q = 1
    (1..120).each do |i|
      arr[i - 1] = rand(1...1000) * q
      q *= -1 if (i % 10).zero?
    end
    f_file.write(arr.join(' '))
    f_file.close
  end

  def self.transfer_data(nums)
    p_file = File.new('P.txt', 'w')
    f_file = File.open('F.txt', 'r')
    f_file_info = f_file.read.split
    f_file_info.map! { |elem| Integer(elem) }
    arr = []
    positive_count = 0
    negative_count = 10
    is_positive = 1
    120.times do |i|
      is_positive *= -1 if (i % nums).zero? && i != 0
      if is_positive == 1
        arr[i] = f_file_info[positive_count]
        positive_count += 1
        positive_count += 10 if (positive_count % 10).zero?
      else
        arr[i] = f_file_info[negative_count]
        negative_count += 1
        negative_count += 10 if (negative_count % 10).zero?
      end
    end
    p_file.write(arr.join(' '))
    p_file.close
    f_file.close
    [f_file_info, arr]
  end
end
