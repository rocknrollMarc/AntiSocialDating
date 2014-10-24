class Hobbies
  include Mongoid::Document
  include Mongoid::Enum 
  include Mongoid::Likeable
  include Mongoid::Commentable
  include Mongoid::Sharable


  field :id, type: Integer
  field :hobby_name, type: String
  field :user, type: Member

  enum :hobbies, [:reading, :running, :travel, :cafe], :multiple => true

  embedded_in :member
end
