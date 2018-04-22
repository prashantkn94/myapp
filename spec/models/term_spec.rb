require 'rails_helper'

RSpec.describe Term, type: :model do
  it "is not a valid term to search" do
    term = Term.new(text:"  ")
    expect(term).not_to be_valid
  end
end
