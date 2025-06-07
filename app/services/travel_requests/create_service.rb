# frozen_string_literal: true

module TravelRequests
  class CreateService
    def initialize(params)
      @params = params
    end

    def call
      TravelRequest.create(@params)
    end
  end
end
