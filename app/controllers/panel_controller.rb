class PanelController < ApplicationController
  def main
    @user1 = User.first
    @user2 = User.last

    @plans = Plan.all
    add_new_plan if @plans.empty?

    @user1_rents = @user1.rents
    @user2_rents = @user2.rents

    @depense = Depense.new
  end

  private

  def add_new_plan
    new_plan = Plan.new
    new_plan.name = "Plan 1"

    first_rent = Rent.new
    first_rent.user = @user1
    first_rent.plan = new_plan
    first_rent.save

    second_rent = Rent.new
    second_rent.user = @user2
    second_rent.plan = new_plan
    second_rent.save

    new_plan.save

    @plans = Plan.all
  end
end
