# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :text

end
