class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.references :course, foreign_key: true
      t.string :student_name

      t.timestamps
    end
  end
end
