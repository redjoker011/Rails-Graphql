data = [
  {
    url: "http://graphql.org/",
    description: "The Best Query Language"
  },
  {
    url: "http://dev.apollodata.com/",
    description: "Awesome GraphQL Client"
  }
]

if Link.all.empty?
  data.each do |x|
    link = Link.new(x)
    if link.save 
      puts "Success"
    else
      puts "Error, #{link.errors.full_messages}"
    end
  end
  puts "Finished Seeding Link Model"
end
