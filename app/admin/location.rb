ActiveAdmin.register Location do
  permit_params :name, :address, :organization

  index do
    selectable_column
    id_column
    column :name
    column :address
    column :organization
    actions
  end

  filter :name
  filter :address
  filter :organization

  form do |f|
    f.inputs 'Location details' do
      f.input :name
      f.input :address
      f.input :organization
    end
    f.actions
  end
end
