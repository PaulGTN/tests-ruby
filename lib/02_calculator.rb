def add(a, b)
    a + b 
end 

def subtract(a, b)
    a - b 
end 

def sum(input_array)
    result = 0
	if input_array == []
		return 0
	end
	for i in 0..input_array.length-1
		result = input_array[i] + result
	end
result
end


def multiply(a, b)
    a * b

end

=begin
=end
def power(a, b)
    a ** b
    # ou tout simplement a ^ b et end 
end



def factorial (a)
    (1..a).inject(:*) || 1
end


