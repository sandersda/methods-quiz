require './test_setup'
require './methods_quiz'

# TODO - write tests here
describe "methods_quiz" do
	describe "has_teen?" do
		it 'should determine if any three ages are teenagers' do
			has_teen?(9,4567,15).must_equal(true)
		end

		it 'should determine if none of the names are teenagers' do
			has_teen?(9,1245678,-19).must_equal(false)
		end
	end
end
