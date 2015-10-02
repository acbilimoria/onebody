class GroupLeader < ActiveRecord::Base
  belongs_to :person
  belongs_to :group
  validates_presence_of :person_id
  validates_presence_of :group_id
  validates_uniqueness_of :person_id, scope: :group_id
end
