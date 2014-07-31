class AddDateToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :data_postarii, :date
  end
end
