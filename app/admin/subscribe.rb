ActiveAdmin.register Subscribe do
  permit_params :email, :is_active

  index do
    selectable_column
    id_column
    column :email
    column :is_active
    actions
  end

  filter :name
  filter :created_at

  form do |f|
    f.inputs "Subscriber Details" do
      f.input :email
      f.input :is_active
    end
    f.actions
  end

end
