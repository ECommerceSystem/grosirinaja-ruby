class CreateSellerGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :seller_goods do |t|
      t.references :user, foreign_key: true, null:false
      t.references :good, foreign_key: true, null:false
    
      t.timestamps
    end
  end
end
