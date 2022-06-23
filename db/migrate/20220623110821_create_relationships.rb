class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :users, :role, index: true, forigen_key: true

      t.timestamps null: false
    end
  end
end
