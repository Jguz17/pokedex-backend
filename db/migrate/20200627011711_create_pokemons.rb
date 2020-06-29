class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :user_id
      t.string :name
      t.string :types, :default => nil
      t.string :sprites, :default => nil

      t.timestamps
    end
  end
end
