class CreateRecipees < ActiveRecord::Migration
  def change
    create_table :recipees do |t|
      t.string :name
      t.string :ingredients
      t.string :type
      t.string :ocassion
      t.string :description
      t.string :picture
      t.string :video
      t.string :eating_qtty
      t.string :prep_time
      t.string :country
      t.string :tips
      t.string :difficulty
      t.string :rating
      t.string :location

      t.timestamps
    end
  end
end
