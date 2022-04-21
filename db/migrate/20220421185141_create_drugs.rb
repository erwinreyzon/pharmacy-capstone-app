class CreateDrugs < ActiveRecord::Migration[7.0]
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :description
      t.integer :class_id
      t.string :image_url

      t.timestamps
    end
  end
end
