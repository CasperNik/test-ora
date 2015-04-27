module Logable
  extend ActiveSupport::Concern

  included do

    validates_presence_of :title
    validates_presence_of :text

    has_many :logs, as: :logable

  end


end
