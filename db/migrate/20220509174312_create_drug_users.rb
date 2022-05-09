class CreateDrugUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :drug_users do |t|
      t.integer :user_id
      t.integer :drug_id
      t.string :prescribed_md
      t.integer :quantity
      t.string :directions
      t.boolean :status

      t.timestamps
    end
  end
end
