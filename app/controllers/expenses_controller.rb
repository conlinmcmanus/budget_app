class ExpensesController < ApplicationController
  before_action :set_expenses
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  # GET categories/1/expenses
  def index
    @expenses = @category.expenses
  end

  # GET categories/1/expenses/1
  def show
  end

  # GET categories/1/expenses/new
  def new
    @expense = @category.expenses.build
  end

  # GET categories/1/expenses/1/edit
  def edit
  end

  # POST categories/1/expenses
  def create
    @expense = @category.expenses.build(expense_params)

    if @expense.save
      redirect_to([@expense.category, @expense], notice: 'Expense was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT categories/1/expenses/1
  def update
    if @expense.update_attributes(expense_params)
      redirect_to([@expense.category, @expense], notice: 'Expense was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE categories/1/expenses/1
  def destroy
    @expense.destroy

    redirect_to category_expenses_url(@category)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expenses
      @category = Category.find(params[:category_id])
    end

    def set_expense
      @expense = @category.expenses.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expense_params
      params.require(:expense).permit(:name, :amount_spent)
    end
end
