class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.references :user, foreign_key: true, null:false

      t.timestamps
    end
  end
end
