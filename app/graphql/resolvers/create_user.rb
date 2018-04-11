# Resolver for Creating Users
class Resolvers::CreateUser < GraphQL::Function
  AuthProviderInput = GraphQL::InputObjectType.define do
    name "AuthProviderSignupData"

    argument :auth, Types::AuthProviderEmailInput
  end

  argument :name, !types.String
  argument :authProvider, !AuthProviderInput

  type Types::UserType

  def call(_obj, args, _ctx)
    User.create!(
      name: args[:name],
      email: args[:authProvider][:auth][:email],
      password: args[:authProvider][:auth][:password]
    )
  end
end
