class HomeController < ApplicationController
  def index
    
  end

  def about
  end
  
  def category
    slug = params[:slug]
    @category = Category.find_by_slug(slug)
    return(flash[:error] = 'contact not found' and redirect_to root_path ) unless @category
  end
  
  def blog
    slug = params[:slug]
    @blog = Article.find_by_slug(slug)
    return(flash[:error] = 'contact not found' and redirect_to root_path ) unless @blog
  end
end
