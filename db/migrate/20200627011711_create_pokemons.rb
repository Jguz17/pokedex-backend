class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :user_id
      t.integer :dex_id, :default => nil
      t.string :name
      t.string :types, array: true, :default => []
      t.string :sprites, :default => nil

      t.timestamps
    end
  end
end
