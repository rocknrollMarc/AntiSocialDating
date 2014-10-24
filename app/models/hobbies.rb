class Hobbies
  include Mongoid::Document
  field :id, type: Integer
  field :hobby_name, type: String
  field :user, type: Member

  embedded_in :member
end
