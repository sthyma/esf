class RemoveColumnsFromEstimation < ActiveRecord::Migration[6.0]
  def change
    remove_column :estimations, :first_name
    remove_column :estimations, :last_name
    add_column :estimations, :full_name, :string
    add_column :estimations, :phone, :string
    add_column :estimations, :email, :string
  end
end
