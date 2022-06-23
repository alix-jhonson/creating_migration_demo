class CreateStudent < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :f_name
      t.string :l_name
      t.string :subject_name
    end
  end
end
