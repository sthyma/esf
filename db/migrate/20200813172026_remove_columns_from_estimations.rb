class RemoveColumnsFromEstimations < ActiveRecord::Migration[6.0]
  def change
    def up
      add_column :estimations, :full_name
      add_column :estimations, :phone
      add_column :estimations, :email
    end
  
    def down
      remove_column :estimations, :first_name
      remove_column :estimations, :last_name
    end
  end
end
