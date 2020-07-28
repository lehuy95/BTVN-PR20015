def sum(arr)
	tong = 0
	arr.each do |value_of_index|
	  tong+= value_of_index
  end
	return tong
end

sum([1,2,3,4]) 
