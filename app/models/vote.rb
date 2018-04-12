# == Schema Information
#
# Table name: votes
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  link_id    :integer
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_votes_on_link_id  (link_id)
#  index_votes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (link_id => links.id)
#  fk_rails_...  (user_id => users.id)
#

class Vote < ApplicationRecord
  belongs_to :link
  belongs_to :user
end
