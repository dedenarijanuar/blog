ActiveAdmin.register Article do
  permit_params :title_id, :title_en, :content_id, :content_en, :is_active

  index do
    selectable_column
    id_column
    column :title_id
    column :title_en
    column :content_id
    column :content_en
    actions
  end

  filter :title_id
  filter :title_en
  filter :content_id
  filter :content_en
  filter :is_active
  filter :created_at

  form do |f|
    f.inputs "Blog Details" do
      f.input :title_id
      f.input :title_en
      f.input :content_id
      f.input :content_en
      f.input :is_active
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
