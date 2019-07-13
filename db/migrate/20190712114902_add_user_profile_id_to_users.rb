class AddUserProfileIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :userprofile_id, :integer
  end
end
