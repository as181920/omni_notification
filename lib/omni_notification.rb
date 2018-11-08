require "omni_notification/engine"

module OmniNotification
  extend ActiveSupport::Concern

  included do
    has_many :notifications, class_name: "::OmniNotification", as: :notifiable, dependent: :destroy
  end
end
