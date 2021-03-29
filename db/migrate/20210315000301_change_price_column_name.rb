class ChangePriceColumnName < ActiveRecord::Migration[5.2]
  def up
    rename_column :products, :price, :price_cents
  end

  def down
    rename_column :products, :price_cents, :price
  end
end
