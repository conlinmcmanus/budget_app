class MonthlyBudgetsController < ApplicationController
  before_action :authenticate_user!
  def index
  end


  def new
    @monthly_budget = MonthlyBudget.new
  end

  def create
    @monthly_budget = MonthlyBudget.new monthly_budget_params

    if @monthly_budget.save
      flash[:success] = "#{@monthly_budget.month} was successfully created."
      redirect_to monthly_budget_categories_path(params[:id])
    else
      flash[:danger] = "Must enter current month"
      render :index
    end
  end

  private

  def monthly_budget_params
    params.require(:monthly_budget).permit(:month, :user_id)
  end
end
