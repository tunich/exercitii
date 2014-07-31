# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Exercise.create!([
	{
		title:"nr reale1",
		descriere:"este un  ",
		continut:"1+2+3+4+5+6=",
		dificultate: 1,
		categorie:"numere reale",
		data_postarii: Date.parse("29/08/2014"),
		image_file_name: "checkmark.png"
		},
		{title:"nr reale2",
		descriere:"este un ",
		continut:"1+2+3+4+5+6=",
		dificultate: 3,
		categorie:"numere reale",
		data_postarii: Date.new,
		image_file_name: "checkmark.png"
		},
		{title:"nr reale3",
		descriere:"este un ",
		continut:"1+2+3+4+5+6=",
		dificultate: 5,
		categorie:"numere reale",
		data_postarii: Date.new,
		image_file_name: "checkmark.png"}
		])
