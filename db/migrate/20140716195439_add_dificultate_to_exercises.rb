class AddDificultateToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :dificultate, :integer
  end
end
