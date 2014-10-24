class MemberInfo
  include Mongoid::Document
  field :id, type: Integer
  field :age, type: Integer
  field :gender, type: String
  field :smoker, type: Mongoid::Boolean
  field :drinker, type: Mongoid::Boolean
  field :relashionship_status, type: String
  field :children, type: Integer

  embedded_in :member

  
end
