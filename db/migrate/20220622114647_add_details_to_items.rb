class AddDetailsToItems < ActiveRecord::Migration
  def change
    add_column :items, :price, :decimal, precision: 5, scale: 2
    add_reference :items, :supplier, polymorphic: true, index: true
  end
end
