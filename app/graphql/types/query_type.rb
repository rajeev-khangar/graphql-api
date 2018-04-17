Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allExpenses, !types[Types::ExpenseType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Expense.all }
  end
end