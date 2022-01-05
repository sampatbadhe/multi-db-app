class Event < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_one  :latest_message, -> { order('messages.created_at desc').limit(1) }, class_name: 'Message'
end
