class Api::V1::RegistrationsController < ApplicationController

  skip_before_action :verify_authenticity_token
  def index
  	@registrations = Registration.all
  end

  def create
  	@registration = Registration.new(registration_params)
    @registration.total = @registration.no_of_tickets * 200
  	if @registration.save
  		render json: @registrations
  	else
  		redirect_to new_registration_path
  	end
  end

  private
  def registration_params
    params.require(:registration).permit(:name, :no_of_tickets, :total)
  end
end
