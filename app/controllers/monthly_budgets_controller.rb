
class MonthlyBudgetsController < ApplicationController
  before_action :authenticate_user!
  

  def index
    redirect_to new_monthly_budget_path
  end

  def new
    @monthly_budget = MonthlyBudget.new
  end

  def create
    @monthly_budget = MonthlyBudget.new monthly_budget_params
    @monthly_budget.user = current_user
    if @monthly_budget.save
      @@monthly_budget = @monthly_budget
      flash[:success] = "#{@monthly_budget.month} was successfully created."
      redirect_to categories_path(params[:id])
    else
      flash[:danger] = "Must enter current month"
     
      render :new
    end
  end

  def listing
    @monthly_budgets = current_user.monthly_budgets.all
  end

  private

  def monthly_budget_params
    params.require(:monthly_budget).permit(:month, :user_id)
  end

end
