# frozen_string_literal: true

class TravelRequestsController < ApplicationController
  def new
    @travel_request = TravelRequest.new
    @travel_requests = TravelRequest.order(created_at: :desc)
  end

  def create
    @travel_request = TravelRequests::CreateService.new(travel_request_params).call
    if @travel_request.persisted?
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Submitted successfully." }
        format.turbo_stream
      end
    else
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.turbo_stream
      end
    end
  end

  private

  def travel_request_params
    params.require(:travel_request).permit(:destination, :start_date, :end_date, :notes)
  end
end
