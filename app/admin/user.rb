ActiveAdmin.register User do
  permit_params :email, :admin, :username

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :confirmed_at
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :username
      row :admin
      row :email
      row :reset_password_sent_at
      row :remember_created_at
      row :sign_in_count
      row :signed_in_at
      row :last_signed_in_at
      row :current_sign_in_ip
      row :last_sign_in_ip
      row :confirmed_at
      row :confirmation_sent_at
      row :created_at
      row :updated_at
    end
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs 'Admin Details' do
      f.input :email
      f.input :admin
      f.input :username
    end
    f.actions
  end
end
