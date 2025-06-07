# frozen_string_literal: true

class CreateTravelRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :travel_requests do |t|
      t.string :destination
      t.date :start_date
      t.date :end_date
      t.text :notes

      t.timestamps
    end
  end
end
