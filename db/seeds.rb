rails_env = Rails.env
seed_file = "seeds/#{Rails.env}"
puts "Seeding #{rails_env} environment!"
require_relative seed_file
# http://benwyrosdick.com/til/2016/07/12/reset-postgres-pk-in-rails.html
ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

