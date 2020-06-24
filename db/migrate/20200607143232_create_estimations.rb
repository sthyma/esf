class CreateEstimations < ActiveRecord::Migration[6.0]
  def change
    create_table :estimations do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :type

      t.timestamps
    end
  end
end
