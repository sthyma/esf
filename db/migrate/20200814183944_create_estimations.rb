class CreateEstimations < ActiveRecord::Migration[6.0]
  def change
    create_table :estimations do |t|
      t.string :full_name
      t.string :phone
      t.string :email
      t.string :address
      t.string :type_estimation

      t.timestamps
    end
  end
end
