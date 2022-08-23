class ChangeDataTypeForDescriptionToClothes < ActiveRecord::Migration[7.0]
  def change
    change_column(:clothes, :description, :text)
  end
end
