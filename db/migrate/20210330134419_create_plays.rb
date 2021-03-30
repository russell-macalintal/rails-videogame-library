class CreatePlays < ActiveRecord::Migration[6.1]
  def change
    create_table :plays do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :hours_played

      t.timestamps
    end
  end
end
