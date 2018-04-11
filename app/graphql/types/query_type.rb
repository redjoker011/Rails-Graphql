Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :allLinks do
    type !types[Types::LinkType]
    description "An example field added by the generator"
    resolve ->(_obj, _args, _ctx) { Link.all }
  end
end
