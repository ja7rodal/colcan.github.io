# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  address    :string
#  phone      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ApplicationRecord
	has_many :receipts
	has_one :user
	belongs_to :route
end
