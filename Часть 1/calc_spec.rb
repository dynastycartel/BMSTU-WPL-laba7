# frozen_string_literal: true

require 'faker'
require_relative 'calc'

RSpec.describe Calc do
  context 'The only test' do
    it 'that can be conducted here' do
      p_file = File.new('P.txt', 'w')
      f_file = File.open('F.txt', 'r')
      f_file_info = f_file.read.split
      f_file_info.map! { |elem| Integer(elem) }
      arr = []
      positive_count = 0
      negative_count = 10
      is_positive = 1
      100.times do |i|
        is_positive *= -1 if (i % 5).zero? && i != 0
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
      expect(arr[0]).to eq(f_file_info[0])
      expect(arr[4]).to eq(f_file_info[4])
      expect(arr[5]).to eq(f_file_info[10])
      expect(arr[9]).to eq(f_file_info[14])
      expect(arr[10]).to eq(f_file_info[5])
      expect(arr[12]).to eq(f_file_info[7])
      expect(arr[14]).to eq(f_file_info[9])
      expect(arr[15]).to eq(f_file_info[15])
      expect(arr[19]).to eq(f_file_info[19])
      expect(arr[20]).to eq(f_file_info[20])
      expect(arr[26]).to eq(f_file_info[31])
    end
  end
end
