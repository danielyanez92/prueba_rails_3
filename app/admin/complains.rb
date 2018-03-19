ActiveAdmin.register Complain, as: 'Companycomplain' do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :company_id, :user_id, :content
  form do |f|
   inputs 'Agregar un nuevo Reclamo' do
     f.input :user_id,
       label: 'Author',
       as: :select,
       collection: User.pluck(:email, :id)
       f.input :company_id,
         label: 'Compañia',
         as: :select,
         collection: Company.pluck(:name, :id)
     input :content
   end
   actions
  end
end
