class Member
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Followee
  include Mongoid::Follower
  include Mongoid::Rating
  include Mongoid::Liker
  include Mongoid::Commenter
  include Mongoid::Sharer



  field :Id, type: Integer
  field :first_name, type: String
  field :last_name, type: String
  field :photo, type: Avatar
  field :info, type: MemberInfo
  field :search_preference, type: MemberInfo
  field :description, type: String

  embeds_many :messages
  index "message.from_member" => 1

  embeds_many :hobbies
  index "hobbies.user" => 1

  embeds_one :member_info
  embeds_many :contacted_members
  index "contacted_member.user" => 1

  embeds_many :articles
  index "article.name" => 1

  belongs_to :user

  accepts_nested_attributes_for :member_info, :hobbies, :article

  has_mongoid_attached_file :avatar
end
