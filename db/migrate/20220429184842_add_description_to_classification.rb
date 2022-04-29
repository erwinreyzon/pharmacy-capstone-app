class AddDescriptionToClassification < ActiveRecord::Migration[7.0]
  def change
    add_column :classifications, :description, :string
  end
end
