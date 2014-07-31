require 'spec_helper'
describe "Navigating exercises"do
	it "allows navigation from the detail page to the listing page" do
	exercise=Exercise.create(exercise_attributes)
	visit exercise_url(exercise)
	click_link "All Exercises"
	expect(current_path).to eq(tucu_path)
	end
	it "allows navigation from the listing page to the detail page" do
	exercise=Exercise.create(exercise_attributes)
	visit tucu_url
	click_link(exercise.title)
	expect(current_path).to eq(exercise_path(exercise.id))
	end			
end					