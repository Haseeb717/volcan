ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :password,:email,:name,:role_id

	form do |f|
		f.inputs "User" do 
			f.input :name
			f.input :email
			f.input :password
			f.input :role_id, :prompt => 'Select Role', :as => :select, :collection => Role.all.map{|m| [m.title, m.id]}
			f.actions
		end
	end

	index do
	  selectable_column
	  column :email
	  column :name
	  column :created_at
	  actions
	end

	filter :email
	filter :name

end
