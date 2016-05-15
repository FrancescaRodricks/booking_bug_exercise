class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, null: false, limit: 25
      t.integer :goals, null: false
      t.integer :team_id, null: false
    end
  end
end
