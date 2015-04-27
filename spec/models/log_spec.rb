# == Schema Information
#
# Table name: logs
#
#  id           :integer          not null, primary key
#  logable_id   :integer
#  logable_type :string
#  user         :string
#  t_type       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_logs_on_logable_type_and_logable_id  (logable_type,logable_id)
#

require 'rails_helper'

RSpec.describe Log, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
