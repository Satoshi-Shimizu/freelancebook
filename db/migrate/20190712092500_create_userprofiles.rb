class CreateUserprofiles < ActiveRecord::Migration[5.2]
  def change
    create_table :userprofiles do |t|
      t.integer     :user_id
      t.text        :profile
      t.references  :school, foreign_key: true
      t.text        :twitterurl
      t.text        :portfoliourl
      t.integer     :partnerflag
      t.integer     :point
      t.timestamps
    end
  end
end
