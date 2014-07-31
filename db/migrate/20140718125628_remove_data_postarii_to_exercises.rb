class RemoveDataPostariiToExercises < ActiveRecord::Migration
  def change
  	remove_column :exercises, :data_postarii, :datetime
  end
end
