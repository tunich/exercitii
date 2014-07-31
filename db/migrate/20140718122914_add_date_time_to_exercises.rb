class AddDateTimeToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :data_postarii, :datetime
  end
end
