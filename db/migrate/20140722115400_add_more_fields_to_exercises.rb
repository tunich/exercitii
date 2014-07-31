class AddMoreFieldsToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :image_file_name, :string
  end
end
