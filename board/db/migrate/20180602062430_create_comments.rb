class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.timestamps
      t.belongs_to :model
      t.belongs_to :post
    end
  end
end
