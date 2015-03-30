require 'rails_helper'

describe  'adding a new haiku' do
  let(:user) { FactoryGirl.create(:user) }

  before do
    sign_in(user)
  end

  # it 'will allow a user to write an awesome haiku' do
  #   visit '/'
  #
  # end
end
