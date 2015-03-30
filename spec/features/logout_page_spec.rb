require "rails_helper"

describe "the sign out a user process" do
    let(:user) { FactoryGirl.create(:user) }

    before do
    sign_in(user)
  end


  it "signs out a user" do
    visit "/"
    click_on "Log out"
    expect(page). to have_content "Signed out"
  end
  it "confirms a user has logged out" do
    visit "/"
    click_on "Log out"
    click_on "Sign in"
    expect(page). to have_content "Log in"
  end
end
