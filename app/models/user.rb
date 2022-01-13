class User < ApplicationRecord
  has_many :events
  has_many :messages, through: :events, disable_joins: true

  has_one :latest_event, -> { order('events.created_at desc').limit(1) }, class_name: 'Event'
  has_one :latest_message, through: :latest_event, disable_joins: true

  def event_messages
    Message.where(event_id: events.pluck(:id))
  end

  def latest_event_message
    Message.where(event_id: latest_event&.id).order('messages.created_at desc').first
  end
end
