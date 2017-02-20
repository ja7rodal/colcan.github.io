# == Schema Information
#
# Table name: receipts
#
#  id          :integer          not null, primary key
#  client_id   :integer
#  amount      :integer
#  user_id     :integer
#  temperature :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Receipt < ApplicationRecord
  belongs_to :client
  belongs_to :user
	belongs_to :route
	has_many :samples
	
end
