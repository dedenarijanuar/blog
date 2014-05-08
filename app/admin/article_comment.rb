ActiveAdmin.register ArticleComment do
  permit_params :content

  index do
    selectable_column
    id_column
    #column :user
    column :article
    column :content
    actions
  end

  filter :content
  filter :created_at

  form do |f|
    f.inputs "Blog Details" do
      f.input :content
    end
    f.actions
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
