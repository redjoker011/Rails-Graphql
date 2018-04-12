# == Schema Information
#
# Table name: links
#
#  created_at  :datetime         not null
#  description :text
#  id          :integer          not null, primary key
#  updated_at  :datetime         not null
#  url         :string
#  user_id     :integer
#
# Indexes
#
#  index_links_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Link < ApplicationRecord
  belongs_to :user, optional: true

  has_many :votes
end
