class ContactedMembers
  include Mongoid::Document
  field :id, type: Integer
  field :user, type: Member
end
