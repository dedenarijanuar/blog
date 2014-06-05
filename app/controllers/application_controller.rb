class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout 'superhero'
  before_filter :load_data
  
  def load_data
    @categories = Category.limit(3)
    @articles = Article.search(params)
    @articles_by_date = Article.all.group_by{|article| article.created_at.to_date.month }
  end
end
