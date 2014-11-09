class Array

	def initialize
		super.initialize
		@result_holder =0
	end

	def combine(result)
			combined_array = [result]+self
	end

	def get_length(arr)
		arr.length - 1
	end

	def new_inject(result)
		combined_array = combine(result)
		iterations = get_length(combined_array)
		iterations.times do 
			@result_holder = yield(combined_array.take(2))
			combined_array = [@result_holder]+combined_array.drop(2)
		end
		@result_holder
	end


end
























			# result = yield(combined_array.take(2))
			# result_holder = result 
			# combined_array = [result]+combined_array.drop(2)

# result_holder = 0
		# iterations.times do 
		# 	passed_array = combined_array.take(2)
		# 	result = yield(passed_array)
		# 	result_holder = result
		# 	combined_array = combined_array.drop(2)
		# 	combined_array = [result]+combined_array
		# end

		# return result_holder