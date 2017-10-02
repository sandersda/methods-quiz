  
# TODO - write has_teen?
def has_teen?(int1,int2,int3)
	if (int1 <= 19 and int1 >= 13) or (int2 <= 19 and int2 >= 13) or (int3 <= 19 and int3 >= 13)
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

def icy_hot?(temp1,temp2)
	if (temp1 < 0 and temp2 > 100) or (temp1 > 100 and temp2 < 0)
		return true
	end
	return false
end


# TODO - write closer_to
def closer_to(target,guess1,guess2)
	if (target - guess1).abs == (target - guess2).abs
		return 0
	elsif (target - guess1).abs < (target - guess2).abs
		return guess1
	end
	return guess2
end

# TODO - write two_as_one?