# frozen_string_literal: true

ActiveAdmin.register TravelRequest do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :destination, :start_date, :end_date, :notes
  #
  # or
  #
  # permit_params do
  #   permitted = [:destination, :start_date, :end_date, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :destination, :start_date, :end_date, :notes

  index do
    selectable_column
    id_column
    column :destination
    column :start_date
    column :end_date
    column :notes
    column :created_at
    actions
  end
end
