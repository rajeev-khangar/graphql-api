class Resolvers::CreateExpense < GraphQL::Function
  # arguments passed as "args"
  argument :UserId, types.ID
  argument :description, !types.String
  argument :item_name, !types.String
  argument :cost, !types.Float
  argument :quantity, !types.Int
  argument :subtotal, !types.Float
  argument :date, !types.String


  # return type from the mutation
  type Types::ExpenseType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, ctx)
    Expense.create!(description: args[:description], item_name: args[:item_name], cost: args[:cost], quantity: args[:quantity], subtotal: args[:subtotal], date: args[:date],
      user_id: ctx[:current_user].id)
  end
end