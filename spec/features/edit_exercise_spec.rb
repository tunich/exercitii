require 'spec_helper'
describe "editing an exercise" do
	it "updates the exercise and shows the exercise's updated details" do
		exercise=Exercise.create(exercise_attributes)
		visit exercise_url(exercise)
		click_link 'Edit'
		expect(current_path).to eq(edit_exercise_path(exercise))
		expect(find_field('Title').value).to eq(exercise.title)
		fill_in 'Title', with: "Updated Exercise Title"
		click_button 'Update Exercise'
		expect(current_path).to eq(exercise_path(exercise))
		expect(page).to have_text('Updated Exercise Title')
	end
end