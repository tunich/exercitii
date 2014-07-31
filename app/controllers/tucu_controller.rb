class TucuController < ApplicationController
	def index
		@exercises=Exercise.postate

	end
	def show
		@exercise=Exercise.find(params[:id])
	end

	def edit
		@exercise=Exercise.find(params[:id])
	end

	def update
		@exercise=Exercise.find(params[:id])
		@exercise.update(exercise_params)
		redirect_to @exercise
	end

	def new
		@exercise=Exercise.new
	end
	def create
		@exercise = Exercise.new(exercise_params)
		@exercise.save
		redirect_to @exercise
	end

	def destroy
		@exercise=Exercise.find(params[:id])
		@exercise.destroy
		redirect_to exercises_url
	end
	
	private

		def exercise_params
			params.require(:exercise).permit(:title, :descriere, :continut, :dificultate, :categorie, :data_postarii, :image_file_name)
		end
end
