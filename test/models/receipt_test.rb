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

require 'test_helper'

class ReceiptTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
