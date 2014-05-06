class Article < ActiveRecord::Base
  has_many :article_comments
  before_save :default_active
  
  def default_active
    self.is_active = true
  end
  
  def title
    self.title_id ||= self.title_en
  end
  
  def content
    self.content_id ||= self.content_en
  end
  
  def user
    self.user_id ||= 'admin'
  end
end
