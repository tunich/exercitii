class RemoveContinutToExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :continut, :string
  end
end
