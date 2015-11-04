class Calculator 

	 def add(*n1)
		n1.inject(:+)
	 end
	 
	 def subtract(*n1)
		n1.inject(:-)
	 end 
	 
	 def multiply(*n1)
		n1.inject(:*)
	 end 
	 
	 def division(*n1)
		n1.inject(:/)
		
	 end
end