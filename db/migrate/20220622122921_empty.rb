class Empty < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.string :name
    end
  end
end
