class RemovePartNumberFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :part_number, :string
  end
end
