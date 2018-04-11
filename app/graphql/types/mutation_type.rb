Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :createLink, function: Resolvers::CreateLink.new
end
