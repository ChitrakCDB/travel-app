# frozen_string_literal: true

class TravelRequest < ApplicationRecord
  validates :destination, :start_date, :end_date, presence: true

   def self.ransackable_attributes(auth_object = nil)
    [ "created_at", "destination", "end_date", "id", "id_value", "notes", "start_date", "updated_at" ]
  end
end
