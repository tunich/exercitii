class AddContinutToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :continut, :text
  end
end
