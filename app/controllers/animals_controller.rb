class AnimalsController < ApplicationController
  def index
    species = params[:species]
    gender = params[:gender]
    breed = params[:breed]
    if species != nil
      @animals = Animal.search_species(species)
    elsif gender != nil
      @animals = Animal.search_gender(gender)
    elsif breed != nil
      @animals = Animal.search_breed(breed)
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
  def animal_params
    params.permit(:name,:bio,:species,:gender,:breed,:image)
  end
end
