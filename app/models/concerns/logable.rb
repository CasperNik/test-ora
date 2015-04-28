module Logable
  extend ActiveSupport::Concern

  included do

    validates_presence_of :title
    validates_presence_of :text

    has_many :logs, as: :logable

    def as_json(option={})
      {
          id: id,
          title: title,
          text: text,
          created_at: created_at,
          updated_at: updated_at
      }
    end

  end


end
