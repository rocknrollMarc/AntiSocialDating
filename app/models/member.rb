class Member
  include Mongoid::Document
  include Mongoid::Paperclip

  field :Id, type: Integer
  field :first_name, type: String
  field :last_name, type: String
  field :photo, type: Avatar
  field :info, type: MemberInfo
  field :search_preference, type: MemberInfo
  field :description, type: String

  embeds_many :messages
  embeds_many :bobbies
  embeds_one :member_info
  embeds_many :contacted_members

  belongs_to :user

  accepts_nested_attributes_for :member_info, :hobbies, :member

  has_mongoid_attached_file :avatar
end
