class CreateOmniNotificationReadHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :omni_notification_read_histories do |t|
      t.references :notification, index: true, foreign_key: {to_table: :omni_notification_notifications}
      t.references :reader, polymorphic: true, index: {name: :index_omni_notification_read_histories_on_reader}

      t.datetime :created_at
    end
  end
end
