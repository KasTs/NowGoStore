class ChangePriceColumn < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :price, :integer, default: 0
  end

  def down
    change_column :products, :price, :decimal
  end
end