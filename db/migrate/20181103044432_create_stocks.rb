class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :amount
      t.references :good, foreign_key: true, null:false

      t.timestamps
    end
  end
end
