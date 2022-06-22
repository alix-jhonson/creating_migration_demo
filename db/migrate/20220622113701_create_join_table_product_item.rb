class CreateJoinTableProductItem < ActiveRecord::Migration
  def change
    create_join_table :products, :items do |t|
      # t.index [:product_id, :item_id]
      # t.index [:item_id, :product_id]
    end
  end
end
