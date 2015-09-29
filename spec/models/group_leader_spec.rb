require_relative '../rails_helper'

describe GroupLeader do
  describe 'relationships' do
    context 'given group_leader belongs to one person and one group' do
      before do
        @group_leader = FactoryGirl.create(:group_leader, id: 1, person_id: 1, group_id: 1)
        @person = FactoryGirl.create(:person, id: 1, first_name: 'Testy', last_name: 'Testerson') 
        @group = FactoryGirl.create(:group, id: 1, name: 'Tester Group', category: 'church')
      end

      it 'loads the person entry' do
        expect(@group_leader.person).to match(@person)
      end

      it 'loads the group entry' do
        expect(@group_leader.group).to match(@group)
      end
    end
  end
end
