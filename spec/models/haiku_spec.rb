require 'rails_helper'

describe Haiku do
  it { should belong_to :user}
  it { should }
  it { should validate_presence_of :haiku}
end
