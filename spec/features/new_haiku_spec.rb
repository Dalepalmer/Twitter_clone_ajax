require 'rails_helper'

describe  'adding a new haiku' do
  let(:user) { FactoryGirl.create(:user) }

  before do
    sign_in(user)
  end

  it 'will allow a user to write an awesome haiku' do
    visit '/'
    click_on "New Haiku"
    fill_in "Haiku", with: "Super cool haiku"
    click_on "Create Haiku"
    expect(page). to have_content "Super cool haiku"

  end
end
