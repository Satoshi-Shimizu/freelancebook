class RemoveSkillIdFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :skill_id, :string
  end
end
