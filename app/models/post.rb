class Post < ActiveRecord::Base
  attr_accessible :body, :title, :published, :author_id

  belongs_to :author, class_name: "User"
  scope :published, where(published: true)

  def publish!
    self.published = true
    save!
  end
end
