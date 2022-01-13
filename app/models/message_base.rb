class MessageBase < ActiveRecord::Base
  self.abstract_class = true

  connects_to database: { writing: :message_sourced, reading: :message_sourced }
end
