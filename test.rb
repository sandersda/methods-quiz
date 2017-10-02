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

	describe 'not_string' do
		it 'should determine if the sentence does not already start with not and add a not to the front of the sentence.' do
			not_string('Bilbo Baggins').must_equal('notBilbo Baggins')
		end

		it 'should not do anything to a string if it already starts with "not"' do
			not_string('not Bilbo Baggins').must_equal('not Bilbo Baggins')
		end

		it 'should add a lowercase "not" if there is an uppercase "Not" at the beginning' do
			not_string('Not Bilbo Baggins').must_equal('notNot Bilbo Baggins')
		end

	end