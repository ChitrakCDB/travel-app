# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TravelRequests::CreateService do
  let(:params) { { destination: "Tokyo", start_date: Date.today, end_date: Date.tomorrow } }

  it "creates a valid travel request" do
    service = described_class.new(params)
    result = service.call
    expect(result).to be_persisted
  end
end
