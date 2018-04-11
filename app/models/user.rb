# == Schema Information
#
# Table name: users
#
#  created_at      :datetime         not null
#  email           :string
#  id              :integer          not null, primary key
#  name            :string
#  password_digest :string
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
end
