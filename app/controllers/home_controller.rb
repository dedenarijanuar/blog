class HomeController < ApplicationController
  def index
    @categories = Category.limit(3)
    @articles = Article.search(params)
    @articles_by_date = Article.all.group_by{|article| article.created_at.to_date.month }
  end

  def about
  end
end
