class Message
  include Mongoid::Document
  field :id, type: Integer
  field :from_member, type: Member
  field :message_text, type: String

  embedded_in :member
end
