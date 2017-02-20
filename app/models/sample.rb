# == Schema Information
#
# Table name: samples
#
#  id         :integer          not null, primary key
#  sample     :integer
#  quantity   :integer
#  receipt_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sample < ApplicationRecord
  belongs_to :receipt
	enum sample: [:sangre, :plasma, :glucosa, :fluido]
end
