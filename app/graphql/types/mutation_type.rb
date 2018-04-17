Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createExpense, function: Resolvers::CreateExpense.new
end