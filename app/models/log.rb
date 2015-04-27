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

class Log < ActiveRecord::Base

  belongs_to :logable, polymorphic: true

  def self.log_activity model, user, type
    Log.new.tap do |log|
      log.logable = model
      log.user = user.email
      log.t_type = type
      log.save
    end
  end

end
