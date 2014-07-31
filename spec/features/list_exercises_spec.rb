require 'spec_helper'

describe "Viewing the list of exercises" do
	it "shows the exercises" do
		ex1=Exercise.create(
				title:"nr ue",
				descriere:"este un ",
				continut:"1+2+3+4+5+6=",
				dificultate:2,
				categorie:"inductie",
			)
		ex2=Exercise.create(
				title:"nr re",
				descriere:"este un ",
				continut:"1+2+3+4+5+6+7+8+9=",
				dificultate:3,
				categorie:"inductie",
			)
		ex3=Exercise.create(
				title:"nr ee",
				descriere:"este un ",
				continut:"1+2+3+4+5+6+7+8+9+100=",
				dificultate:5,
				categorie:"inductie",
			)
		visit tucu_url
		expect(page).to have_text("3 Exercises")
		expect(page).to have_text(ex1.title)
		expect(page).to have_text(ex1.descriere)
		expect(page).to have_text(ex1.categorie)
		
		expect(page).to have_text(ex2.title)
		expect(page).to have_text(ex2.descriere)
		expect(page).to have_text(ex2.categorie)

		expect(page).to have_text(ex3.title)
		expect(page).to have_text(ex3.descriere)
		expect(page).to have_text(ex3.categorie)
	end

	it "shows 'mica' if the points are less than 3" do
		e=Exercise.create(exercise_attributes(dificultate:2))
		visit tucu_url
		expect(page).to have_text("mica")
	end
	
	it "shows 'medie' if the points are less than 5 and greater than 2" do
		e=Exercise.create(exercise_attributes(dificultate:5))
		visit tucu_url
		expect(page).to have_text("medie")
	end
	
	it "shows 'mare' if the points are less than 7 and greater than 4" do
		e=Exercise.create(exercise_attributes(dificultate:8))
		visit exercises_url
		expect(page).to have_text("mare")
	end
	
# 	it "does not show an Execise that hasn't yet been released" do
#   exercise = Exercise.create(exercise_attributes(released_on: 1.month.from_now))
  
#   visit exercises_path
  
#   expect(page).not_to have_text(exercise.title)
# end

end