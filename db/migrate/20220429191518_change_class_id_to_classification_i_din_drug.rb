class ChangeClassIdToClassificationIDinDrug < ActiveRecord::Migration[7.0]
  def change
    rename_column :drugs, :class_id, :classification_id
  end
end
