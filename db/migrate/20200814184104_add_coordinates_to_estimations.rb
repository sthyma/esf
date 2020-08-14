class AddCoordinatesToEstimations < ActiveRecord::Migration[6.0]
  def change
    add_column :estimations, :latitude, :float
    add_column :estimations, :longitude, :float
  end
end
