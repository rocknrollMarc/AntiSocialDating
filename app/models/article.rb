class Article
  include Mongoid::Document
  include Mongoid::Commentable
  include Mongoid::Sharable
  include Mongoid::Likeable

  field :name, type: String
  field :created, type: TimeNow
  field :description, type: String
  field :text, type: String

  embedded_in :member
end
