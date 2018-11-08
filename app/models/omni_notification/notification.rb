module OmniNotification
  class Notification < ApplicationRecord
    belongs_to :notifiable, polymorphic: true
    has_many :read_histories, class_name: "::OmniNotification::ReadHistory", dependent: :destroy

    validates_presence_of :content
  end
end
