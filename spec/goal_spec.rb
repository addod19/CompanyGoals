require 'rails_helper'

RSpec.describe Goal, type: :model do
  before(:all) do
    @company_goal = Goal.create(id: 1, title: 'Close $1mn revenue by Q1', progress: 0)
  end

  context 'Validates Goals fields' do
    it 'is not valid without a title' do
      @company_goal.title = nil
      @company_goal.save
      expect(@company_goal.errors.full_messages).to include("Title can't be blank")
      @company_goal.title = 'Close $1mn revenue by Q1'
    end

    it 'is not valid without a progress' do
      @company_goal.progress = nil
      @company_goal.save
      expect(@company_goal.errors.full_messages).to include("Progress can't be blank")
      @company_goal.progress = 0
    end
  end
end
