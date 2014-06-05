class Article < ActiveRecord::Base
  has_many :article_comments
  belongs_to :user
  belongs_to :category
  before_save :default_active
  default_scope order('id DESC')
  
  def default_active
    self.is_active = true
  end
  
  def title
    self.title_id ||= self.title_en
  end
  
  def content
    self.content_id ||= self.content_en
  end
  
  def creator
    self.user_id.present?? self.user.name : 'admin'
  end
  
  def category_name
    self.category.present?? self.category.name : '-'
  end
  
  def self.search(params)
    return self.all if params[:searcb].blank?
  end
end
