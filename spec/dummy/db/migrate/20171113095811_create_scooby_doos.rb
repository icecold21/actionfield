class CreateScoobyDoos < ActiveRecord::Migration[5.1]
  def change
    create_table :scooby_doos do |t|
      t.string :name
      t.text :description
      t.integer :legs
      t.timestamps
    end
  end
end
