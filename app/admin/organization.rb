ActiveAdmin.register Organization do
  permit_params :name, :public_name, :type, :pricing_policy, :country

  index do
    selectable_column
    id_column
    column :name
    column :type
    column :pricing_policy
    column :country
    actions
  end

  filter :name
  filter :type
  filter :pricing_policy
  filter :country

  form do |f|
    f.inputs 'Organization details' do
      f.input :name
      f.input :type, as: :select, collection: Organization.types.keys, include_blank: false
      f.input :pricing_policy, as: :select, collection: Organization.pricing_policies, include_blank: false
      f.input :country
    end
    f.actions
  end
end
