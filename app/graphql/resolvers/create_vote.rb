class Resolvers::CreateVote < GraphQL::Function
  argument :linkId, types.ID

  type Types::VoteType

  def call(_obj, args, ctx)
    Vote.create!(
      user: ctx[:current_user],
      link: Link.find(args[:linkId])
    )
  end
end
