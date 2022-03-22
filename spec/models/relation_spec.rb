require 'rails_helper'

RSpec.describe Relation, type: :model do
  before(:each) do
    @user1 = User.create! name: 'Grace', password: '888888', email: 'grace@gmail.com'
    @entity = @user1.entities.create! name: 'Fries', amount: 1000
    @group = @user1.groups.create! name: 'Macdonald', icon: 'icon'
    @relation = @group.relations.create! entity: @entity
  end

  it 'subject should be valid' do
    expect(@relation).to be_valid
  end
end
