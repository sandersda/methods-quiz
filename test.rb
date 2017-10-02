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

	describe 'icy_hot?' do
		it 'should determine if one temperature is below 0 and one is above 100' do
			icy_hot?(-67890,23456789).must_equal(true)
		end

		it 'should not be icy hot if both temperatures are icy' do
			icy_hot?(-678,-567).must_equal(false)
		end

		it 'should not be icy hot if neither temperatures are icy or hot' do
			icy_hot?(0,100).must_equal(false)
		end
	end

	describe 'closer_to' do
		it 'should determine out of two guesses which is closer to the target' do
			closer_to(5,4,7).must_equal(4)
		end

		it 'should state 0 if both guesses are the same distance apart from the target' do
			closer_to(10,11,9).must_equal(0)
		end
	end

	describe 'two_as_one?' do
		it 'should determine if any two numbers can add up to the third' do
			two_as_one?(5,5,10).must_equal(true)
		end

		it 'should determine if any two numbers can add up to the third' do
			two_as_one?(670,600,70).must_equal(true)
		end

		it 'should determine if any two numbers can add up to the third' do
			two_as_one?(5,15,10).must_equal(true)
		end

		it 'should determine if there\'s no possible combination of two to add up to the third' do
			two_as_one?(17,5,10).must_equal(false)
		end
	end
end
