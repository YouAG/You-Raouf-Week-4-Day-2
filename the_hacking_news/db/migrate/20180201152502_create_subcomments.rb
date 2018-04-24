class CreateSubcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :subcomments do |t|
      t.references :comment, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
