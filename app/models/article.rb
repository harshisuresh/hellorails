class Article
  include Mongoid::Document
  has_many :comments, dependent: :destroy
  validates :title, :presence => true, :length => {:minimum => 5}

  field :title, type: String
  field :text, type: String
end
