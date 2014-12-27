class ExpensesController < ApplicationController
  def index
    @expenses = Expense.order("date DESC")
    if params[:concept].present?
      @expenses = @expenses.where("concept ILIKE ?", "%#{params[:concept]}%")
    end
    if params[:category_id].present?
      @expenses = @expenses.where("category_id = ?", params[:category_id])
    end
  end
end
