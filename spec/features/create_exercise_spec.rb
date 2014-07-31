require 'spec_helper'
describe "Creatine a new exercise" do
	it "saves the movie and shows the new exercise's details " do
		visit exercises_url
		click_link 'Add New Exercise'
		expect(current_path).to eq(new_exercise_path)
		fill_in "Title", with:"New Exercise Title"
		click_button 'Create Exercise'
		expect(current_path).to eq(exercise_path(Exercise.last))
		expect(page).to have_text('New Exercise Title')
		fill_in "image_file_name", with: "book.png"
	end
end