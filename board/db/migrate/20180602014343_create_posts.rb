class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :comments
      t.belongs_to :model
      t.timestamps
    end
  end
end
