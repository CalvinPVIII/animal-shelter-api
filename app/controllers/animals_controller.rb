class AnimalsController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods
  TOKEN = 'secret'
  before_action :authenticate, except: [:index, :show]
  def index
    species = params[:species]
    gender = params[:gender]
    breed = params[:breed]
    name = params[:name]
    if species != nil
      @animals = Animal.search_species(species)
    elsif gender != nil
      @animals = Animal.search_gender(gender)
    elsif breed != nil
      @animals = Animal.search_breed(breed)
    elsif name != nil
      @animals = Animal.search_name(name)
    else
      @animals = Animal.all
    end
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "This animal has been updated successfully."
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy!
      render status: 200, json: {
        message: "This animal has been deleted successfully"
      }
    end
  end

  private
  def authenticate
   authenticate_or_request_with_http_token do |token, options|
     ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
   end
 end
  def animal_params
    params.permit(:name,:bio,:species,:gender,:breed,:image)
  end
end
