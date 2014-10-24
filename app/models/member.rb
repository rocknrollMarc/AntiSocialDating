class Member
  include Mongoid::Document
  field :Id, type: Integer
  field :first_name, type: String
  field :last_name, type: String
  field :photo, type: Avatar
  field :info, type: MemberInfo
  field :search_preference, type: MemberInfo
  field :description, type: String
end
