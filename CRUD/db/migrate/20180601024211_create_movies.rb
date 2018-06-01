class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.string :actor
      t.string :release
      t.float :rating
      t.boolean :adult

      t.timestamps
    end
  end
end
