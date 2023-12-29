class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :uid
      t.string :email
      t.string :avatar
      t.string :topimage
      t.string :avatarhash
      t.string :topimagehash
      t.string :searchstatus
      t.string :password
      t.string :cvlink
      t.string :city
      t.string :state
      t.string :country
      t.string :roletype
      t.string :website
      t.string :github
      t.string :linkedin
      t.string :stackoverflow
      t.string :twitter
      t.string :mastodon
      t.string :schedulinglink
      t.string :emailnotifications
      t.timestamps
    end
  end
end
