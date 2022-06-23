class JoiningTable < ActiveRecord::Migration
  def change
    create_join_table :products, :items, table_name: :categorization
  end
end
