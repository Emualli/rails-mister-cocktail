class DosesController < ApplicationController
  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = params[:cocktail_id]
    @dose.ingredient_id = params[:dose][:ingredient_id]
    p @dose
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id]), notice: 'Creation successful'
    else
      redirect_to cocktail_path(params[:cocktail_id]), notice: 'Error while saving your recipe'
    end
  end

  def destroy
    Dose.destroy(params[:id])
    redirect_to cocktail_path(params[:cocktail_id])
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
