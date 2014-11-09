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

