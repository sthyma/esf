class ChangeTypeInEstimations < ActiveRecord::Migration[6.0]
  def change
    remove_column :estimations, :type
    add_column :estimations, :type_estimation, :string
  end
end
