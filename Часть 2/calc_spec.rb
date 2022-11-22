# frozen_string_literal: true

require_relative 'calc'

RSpec.describe Circle do
  context 'Circle with radius of 19' do
    it 'has area of approximately 1134.11495' do
      expect(Circle.new(0, 0, 19).calculate_area.round(5)).to eq(1134.11495)
    end
  end
end

RSpec.describe Sphere do
  context 'Sphere with radius of 12.3' do
    it 'has volume of approximately 4384.56457' do
      expect(Sphere.new(0, 0, 0, 12.3).calculate_volume.round(5)).to eq(4384.56457)
    end
  end
end

RSpec.describe Circle, Sphere do
  context 'Sphere is a Circle\'s child' do
    it 'returns true' do
      expect(Sphere < Circle).to eq(true)
    end
  end

  context 'C1 is a Circle instance' do
    it 'returns true' do
      c1 = Circle.new(1.7, -43.65, 17)
      expect(c1).to be_a Circle
    end
  end

  context 'S1 is a Sphere instance' do
    it 'returns true' do
      s1 = Sphere.new(5.32, 5.212, 1243, 18)
      expect(s1).to be_a Sphere
    end
  end
end
