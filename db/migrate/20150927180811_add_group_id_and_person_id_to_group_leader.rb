class AddGroupIdAndPersonIdToGroupLeader < ActiveRecord::Migration
  def change
    add_column :group_leaders, :group_id, :integer
    add_column :group_leaders, :person_id, :integer
  end
end
