Types::ExpenseType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'Expense'

  # it has the following fields
  field :id, !types.ID
  field :description, !types.String
  field :item_name, !types.String
  field :quantity, !types.Int
  field :subtotal, !types.Float
  field :cost, !types.Float
  field :date, !types.String
end