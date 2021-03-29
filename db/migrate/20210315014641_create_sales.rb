class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.belongs_to :client
      t.timestamps
    end
  end
end
