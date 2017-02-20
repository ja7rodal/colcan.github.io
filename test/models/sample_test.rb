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

require 'test_helper'

class SampleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
