class User < ApplicationRecord
  has_many :events
  has_many :messages, through: :events, disable_joins: true
end
