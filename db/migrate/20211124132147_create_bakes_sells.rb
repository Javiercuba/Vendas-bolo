class CreateBakesSells < ActiveRecord::Migration[6.1]
  def change
    create_table :bakes_sells do |t|
      t.string :name, null: false
      t.float :price
      t.date :date_sell
      t.integer :quantity

      t.timestamps
    end
  end
end
