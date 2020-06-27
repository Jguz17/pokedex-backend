class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :user_id
      t.string :name
      t.string :abilities
      t.string :sprites
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
