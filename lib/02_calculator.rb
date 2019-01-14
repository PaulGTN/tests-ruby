def add(a, b)
    result = a + b
    a = Integer
    b = Integer
    return result
    # ou tout simplement a + b et end 
end 

def subtract(a, b)
    result = a - b
    a = Integer
    b = Integer
    return result
    # ou tout simplement a - b et end 
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
    result = a * b
    a = Integer
    b = Integer
    return result
    # ou tout simplement a * b et end 

end

def power(a, b)
    result = a ^ b
    a = Integer
    b = Integer
    return result
    # ou tout simplement a ^ b et end 
end


def factorial
end


