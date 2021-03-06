class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.references :card
      t.references :round
      t.string :user_guess, limit: 50
      t.boolean :correct, default: false

      t.timestamps null: false
    end
  end
end
