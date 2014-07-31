require 'spec_helper'

describe "deleting an exercise" do
	it "distroys the exercise and shows the exercise listing without the deleted exercise" do
	exercise=Exercise.create(exercise_attributes)
	visit exercise_path(exercise)
	click_link 'Delete'
	expect(current_path).to eq(exercises_path)
	expect(page).not_to have_text(exercise.title)	
	end
end
