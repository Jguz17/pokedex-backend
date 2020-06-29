class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.string :pokemon_name
      t.string :types, :default => nil
      t.string :sprites
       
      t.timestamps
    end
  end
end
