class Array

	def combine(result)
		combined_array = [result]+self
	end

	

	def new_inject(result)
		combined_array = combine(result)
		# puts "Combined array " + combined_array.to_s
		iterations = combined_array.length - 1
		# puts iterations
		result_holder = 0
		iterations.times do 
			# puts "One Iteration"
			passed_array = combined_array.take(2)
			# puts "Passed array " + passed_array.to_s
			result = yield(passed_array)
			result_holder = result
			# puts result
			combined_array = combined_array.drop(2)
			# puts combined_array.to_s
			combined_array = [result]+combined_array
			# puts combined_array.to_s
			# puts "================================"
			# puts "================================"
		end

		return result_holder
	end





end