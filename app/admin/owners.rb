ActiveAdmin.register Owner do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :last_name, :street, :city, :state, :zip, :phone, :email, :active, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :street, :city, :state, :zip, :phone, :email, :active, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
