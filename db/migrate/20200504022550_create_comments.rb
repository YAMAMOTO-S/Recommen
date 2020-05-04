class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :note_id
      t.text :text
      t.timestamps
    end
  end
end
