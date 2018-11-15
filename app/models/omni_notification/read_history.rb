module OmniNotification
  class ReadHistory < ApplicationRecord
    belongs_to :reader, polymorphic: true
  end
end
