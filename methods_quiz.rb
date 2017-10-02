  
# TODO - write has_teen?
def has_teen?(int1,int2,int3)
	if int1 <= 19 and int1 >= 13 or int2 <= 19 and int2 >= 13 or int3 <= 19 and int3 >= 13
		return true
	end
	return false
end

# TODO - write not_string

def not_string(str)
	if str[0..2] == 'not'
		return str
	end
	return 'not' + str
end
# TODO - write icy_hot?


# TODO - write closer_to

# TODO - write two_as_one?