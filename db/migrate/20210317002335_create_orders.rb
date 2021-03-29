class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.belongs_to :product
      t.belongs_to :sale
      t.timestamps
    end
  end
end
