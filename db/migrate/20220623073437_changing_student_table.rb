class ChangingStudentTable < ActiveRecord::Migration
  def change
  change_table :students do |t|
      t.remove :f_name, :l_name
      t.string :full_name
      t.index  :full_name
      t.rename :subject_name, :course_objectives
      end
        end
            end
