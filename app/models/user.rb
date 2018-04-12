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
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :votes, dependent: :destroy
  has_many :links, dependent: :destroy
end
