class CreateOmniNotificationNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :omni_notification_notifications do |t|
      t.references :notifiable, polymorphic: true, index: {name: :index_omni_notification_notifications_on_notifiable}
      t.string :notify_type
      t.text :content

      t.datetime :created_at
    end
  end
end
