GraphqlAppSchema = GraphQL::Schema.define do
  mutation(Types::MutationType)
  query(Types::QueryType)
end
GraphQL::Errors.configure(GraphqlAppSchema) do
  rescue_from ActiveRecord::RecordInvalid do |exception|
    errors = exception.record.errors.full_messages
    GraphQL::ExecutionError.new(errors.join("\n"))
  end
end
