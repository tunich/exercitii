class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :descriere
      t.string :continut
      t.integer :dificultate
      t.string :categorie

      t.timestamps
    end
  end
end
