class DepensesController < ApplicationController
  def create
    new_depense = Depense.new(depenses_strong_params)
    new_depense.user = current_user
    new_depense.rent = current_user.rents.last
    new_depense.save!

    redirect_to root_path
  end

  def depenses_strong_params
    params.require(:depense).permit(:price, :description)
  end
end
