def bubble_sort(array)
	l = array.length
	begin
		nothing_sorted = false
		(l-1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i +1] = array[i +1], array[i]
				nothing_sorted = true
			end 
		end
	end until nothing_sorted == false
end

my_array = [13,5,6,7,1,14]
bubble_sort(my_array)
puts my_array

def bubble_sort_by(array)
	l = array.length
	begin
		nothing_sorted = false
		swapped = false
		(l - 1).times do |i|
			if yield(array[i],array[i +1]) > 0
				array[i],array[i + 1] = array[i +1],array[i]
				nothing_sorted = true
			end
		end
	end until nothing_sorted == false
	array
end

p bubble_sort_by(["hi","hello","hey"]){|left,right| left.length - right.length}
				
		