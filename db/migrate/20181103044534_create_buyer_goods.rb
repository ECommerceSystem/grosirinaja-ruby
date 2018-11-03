class CreateBuyerGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :buyer_goods do |t|
      t.integer :total_price
      t.integer :quantity
      t.references :user, foreign_key: true, null:false
      t.references :good, foreign_key: true, null:false
      
      t.timestamps
    end
  end
end
