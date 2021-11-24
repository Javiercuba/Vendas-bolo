class CreateBakesSells < ActiveRecord::Migration[6.1]
  def change
    create_table :bakes_sells do |t|
      t.string :name
      t.float :price
      t.string :date_sell
      t.decimal :quantity

      t.timestamps
    end
  end
end
