Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :createLink,  function: Resolvers::CreateLink.new
  field :createUser,  function: Resolvers::CreateUser.new
  field :signinUser, function: Resolvers::SigninUser.new
  field :createVote, function: Resolvers::CreateVote.new
end
