class CreateDecks < ActiveRecord::Migration
  def change
    create_table 	:decks do |t|
      t.string 		:name, null:false, limit: 500
      t.references 	:user
      t.integer 	:creator_id

      t.timestamps null: false
    end
  end
end
