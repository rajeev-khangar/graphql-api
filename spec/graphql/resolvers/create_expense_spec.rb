require 'rails_helper'

class Resolvers::CreateExpenseSpec < ActiveSupport::TestCase
  def perform(args = {})
    Resolvers::CreateExpense.new.call(nil, args, {})
  end

  test 'creating new expense' do
    expense = perform(
      description: 'description',
      item_name: 'item_name',
      cost: 'cost',
      quantity: 'quantity',
      subtotal: 'subtotal',
      date: 'date',
    )

    assert expense.persisted?
    assert_equal expense.description, 'description'
    assert_equal expense.item_name, 'item_name'
    assert_equal expense.cost, 'cost'
    assert_equal expense.quantity, 'quantity'
    assert_equal expense.subtotal, 'subtotal'
    assert_equal expense.date, 'date'
    
    
  end
end