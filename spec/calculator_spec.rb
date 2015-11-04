require 'rspec'
require 'calculator'

describe Calculator do 
	describe 'addition' do 
		it 'returns an integer' do 
			calc = Calculator.new
			actual = calc.add(2,3)
			expect(actual).to be_a Integer
		end 
		
		it 'can add many numbers' do 
			calc = Calculator.new 
			actual = calc.add(1,2,3,4)
			expect(actual).to eq 10 
		end 
	end 	
	
	describe 'subtraction' do 
		it 'returns an integer' do
		calc = Calculator.new 
		actual = calc.subtract(4,3)
		expect(actual).to be_a Integer
		end 
		
		it 'subtracting zero returns first integer'do 
		calc = Calculator.new
		actual = calc.subtract(4,0)
		expect(actual).to eq 4
		end
		
		it 'Subtract number from itself should return 0' do
		calc = Calculator.new 
		actual = calc.subtract(4,4)
		expect(actual).to eq 0
		end
		
		it ' should accept more than two numbers at once' do
		calc = Calculator.new
		actual = calc.subtract(10,6,4)
		expect(actual).to eq 0
		end
	end 
	
	describe 'multplication' do 
		it 'returns an integer' do
		calc = Calculator.new 
		actual = calc.multiply(4,3)
		expect(actual).to be_a Integer
		end 
		
		it 'multiplying an integer by one should return the first integer' do 
		calc = Calculator.new 
		actual = calc.multiply(4,1)
		expect(actual).to eq 4
		end 
		
		it 'multiplying an integer by zero should return zero' do 
		calc = Calculator.new 
		actual = calc.multiply(4,0)
		expect(actual).to eq 0
		end 
		
		it 'should accept more than 2 numbers at a time' do 
		calc = Calculator.new 
		actual = calc.multiply(4,1,3)
		expect(actual).to eq 12
		end 
	end 
	
	describe 'division' do 
		it 'returns an integer' do
		calc = Calculator.new 
		actual = calc.division(4,3)
		expect(actual).to be_a Integer
		end 
		
		it 'dividing an integer by one should return the first integer' do 
		calc = Calculator.new 
		actual = calc.division(4,1)
		expect(actual).to eq 4
		end
		
		it 'dividing zero by an integer should return zero and error ' do 
		calc = Calculator.new 
		expect{ actual = calc.division(4,0) }.to raise_error(ZeroDivisionError)
		end 
		
		
		
		it 'should accept more than 2 numbers at a time' do 
		calc = Calculator.new 
		actual = calc.division(16,4,2)
		expect(actual).to eq 2
		end 
	end 
	
end 