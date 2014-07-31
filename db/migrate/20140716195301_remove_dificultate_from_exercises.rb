class RemoveDificultateFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :dificultate, :string
  end
end
