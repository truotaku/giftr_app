class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.text :password_digest
      t.string :first_name
      t.string :last_name
      t.text :small_image_url
      t.text :large_image_url
      t.text :fb_access_token

      t.timestamps
    end
  end
end
