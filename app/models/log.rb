# == Schema Information
#
# Table name: logs
#
#  id              :integer          not null, primary key
#  logable_id      :integer
#  logable_type    :string
#  user            :string
#  t_type          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  destroyed_title :string
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
      if type == 'destroyed'
        log.logable_id = nil
        log.destroyed_title = model.title
      end
      log.user = user.email
      log.t_type = type
      log.save
    end
  end

  def as_json(option={})
    {
        id: id,
        user: user,
        t_type: t_type,
        created_at: created_at,
        updated_at: updated_at,
        m_type: logable_type.downcase,
        logable: log_id,
        logableType: logable_type,
        destroyed_title: destroyed_title
    }
  end

  def log_id
    logable_id unless r_destroyed?
  end

  def r_destroyed?
    logable.blank?
  end

end
