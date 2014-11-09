require 'inject-rewrite'

describe Array do 
	# let(arr:){Array.new([1,2,3,4])}

	it "should exist when initialized" do 
		arr = [1,2,3,4]
		expect(arr).not_to be_nil
	end

	it "should be concatenable" do 
		arr = [1,2,3,4]
		expect(arr.combine(0)).to eq [0,1,2,3,4]
	end

	it "should be able to sum an array of numbers" do 
		arr = [1,2,3,4]
		expect(arr.new_inject(0){|x,y| x+y}).to eq 10
	end

end
