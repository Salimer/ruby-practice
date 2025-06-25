require 'car'

describe 'Car' do
  context 'attributes' do 
    it 'allows reading and writing for :make' do
      car = Car.new 
      car.make = 'Test' 
      expect(car.make).to eq('Tes')

    end
  end

  context '.colors' do
    it "returns an array of color names" do
      
    end
  end

  context '#full_name' do
    
  end
end