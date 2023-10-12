class AddNullFalseToProductFields < ActiveRecord::Migration[7.1]
  def change
    change_column_mull :product, :title, false
    change_column_mull :product, :description, false
    change_column_mull :product, :price, false

  end
end
