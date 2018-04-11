# == Schema Information
#
# Table name: links
#
#  created_at  :datetime         not null
#  description :text
#  id          :integer          not null, primary key
#  updated_at  :datetime         not null
#  url         :string
#

class Link < ApplicationRecord
end
