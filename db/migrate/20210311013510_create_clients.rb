class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name, default: ""
      t.string :email, default: ""
      t.date :birthdate

      t.timestamps
    end
  end
end
