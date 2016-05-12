class DosesController < ApplicationController
  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = params[:cocktail_id]
    @dose.ingredient_id = params[:dose][:ingredient_id]
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id]), notice: 'Creation successful'
    else
      redirect_to cocktail_path(params[:cocktail_id]), notice: 'Error while saving your recipe'
    end
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
