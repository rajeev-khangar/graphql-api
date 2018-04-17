class ExpensesController < ApplicationController
  before_action :authenticate_user!
  
	def new
  end
  
  def index
    response = AssignmentSchema.execute('{allExpenses{id description item_name cost quantity subtotal date}}')
    @expenses = response.values
  end

  def create
  	expense = params[:expense]
    query_str = 'mutation{createExpense(description: "' + expense[:description] + '" ,item_name: "' + expense[:item_name] + '" ,cost: ' + expense[:cost]+ ' ,quantity: ' + expense[:quantity] + ' ,subtotal: ' + expense[:subtotal] + ' ,date: "' + expense[:date] + '"){id description item_name cost quantity subtotal date}} '
    response = AssignmentSchema.execute(query_str, context: {current_user: current_user})
    if response.values.present?
    	flash.now[:alert] = "Successfully created."
    end
  end

end
