class AddSetting < ActiveRecord::Migration
  def change
    create_table :settings do |t|
        t.string :slack_notification_webhook_url
        t.string :slack_notification_username
        t.string :slack_accident_record_notification_webhook_url
        t.string :slack_accident_record_notification_channel
        t.string :slack_accident_record_notification_username
        t.string :slack_exception_notification_webhook_url
        t.string :slack_exception_notification_channel
        t.string :slack_exception_notification_username
        t.string :admin_ticket_access_token
        t.string :admin_ticket_expires_in
        t.string :admin_ticket_refresh_token
        t.string :admin_ticket_updated_at
        t.string :sync_qiniu_develop_time

        t.timestamps
    end
  end
end
