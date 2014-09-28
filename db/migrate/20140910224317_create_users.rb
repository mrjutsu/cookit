class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :password_confirmation
      t.string :profile_pic
      t.string :bio
      t.string :cooking_expertise
      t.string :favorite_foods
      t.string :location
      t.string :url
      t.string :language

      t.timestamps
    end
  end
end
