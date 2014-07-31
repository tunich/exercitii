module TucuHelper
	def format_dificultate(e)
		test = e.dificultate 
		case test
		when 1..3
		 "mica"
		when 4..6 
			"medie"
		when 7..10 
			"mare"
		else
			"nu este punctat"
		end
	end
	
	def image_for(exercise)
		if exercise.image_file_name.blank?
			image_tag('book.png')
		else
			image_tag(exercise.image_file_name)
		end
	end
end
