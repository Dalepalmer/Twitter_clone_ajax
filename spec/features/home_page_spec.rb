require "rails_helper"

describe "the homepage" do
  it "goes to the home page" do
    visit "/"
    expect(page).to have_content 'Haikus'
  end
  it "renders the haiku form", js: true do
    visit "/"
    click_on "New Haiku"
    expect(page). to have_content 'Create Haiku'
  end
end
