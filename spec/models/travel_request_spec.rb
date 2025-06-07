# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TravelRequest, type: :model do
  it "is valid with valid attributes" do
    request = described_class.new(destination: "Dubai", start_date: Date.today, end_date: Date.tomorrow)
    expect(request).to be_valid
  end

  it "is invalid without a destination" do
    request = described_class.new(start_date: Date.today, end_date: Date.tomorrow)
    expect(request).to_not be_valid
  end
end
