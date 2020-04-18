class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.string :image_url
      t.references :user
      t.references :category
      
      t.timestamps
    end
  end
end
