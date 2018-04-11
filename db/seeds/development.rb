models_to_seed = %w[link]
models_to_seed.each do |model|
  require_relative "models/#{model}"
end
