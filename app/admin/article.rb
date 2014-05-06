ActiveAdmin.register Article do
  permit_params :title_id, :title_en, :content_id, :content_en, :is_active

  index do
    selectable_column
    id_column
    
    column "Creator" do |article|
      article.user
    end
    column "Title" do |article|
      article.title
    end
    column "Content" do |article|
      ActionView::Base.full_sanitizer.sanitize(article.content.truncate(200))
    end
    actions
  end
  
  filter :title_id
  filter :title_en
  filter :content_id
  filter :content_en
  filter :created_at

  form do |f|
    f.inputs "Blog Details" do
      f.input :title_id
      f.input :title_en
      f.input :content_id, :as => :ckeditor
      f.input :content_en, :as => :ckeditor
      f.input :is_active
    end
    f.actions
  end
  
  show do |s|
    render "admin/articles/show", article: s
#    h3 article.title
#    div do
#      simple_format article.content
#    end
  end
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
