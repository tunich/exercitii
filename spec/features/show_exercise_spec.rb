require 'spec_helper'

describe "Viewing an individual exercise" do
	it "shows the exercise"do
	exercise=Exercise.create(exercise_attributes)
	visit exercise_url(exercise)
	expect(page).to have_text(exercise.title)
	expect(page).to have_text(exercise.dificultate)
	expect(page).to have_text(exercise.continut)
	expect(page).to have_selector("img[src$='#{exercise.image_file_name}']")
end

end