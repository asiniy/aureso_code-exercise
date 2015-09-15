ActiveAdmin.register Country do
  permit_params :name, :country_code

  index do
    selectable_column
    id_column
    column :name
    column :country_code
    actions
  end

  filter :name
  filter :country_code
  filter :created_at

  form do |f|
    f.inputs 'Country details' do
      f.input :name
      f.input :country_code
    end
    f.actions
  end
end
