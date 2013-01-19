require 'spec_helper'

describe Course do
  before do
		@course = User.new(name: "Math40", professor: "Francis Su", 
			time_offer: "Spring 2013")
	end
	subject { @course }

	it { should respond_to(:name) }
	it { should respond_to(:professor) } 
	it { should respond_to(:time_offer) }
end
