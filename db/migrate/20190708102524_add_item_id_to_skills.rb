class AddItemIdToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :item_id, :integer
  end
end
