ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
  
   #   div class: "blank_slate_container", id: "dashboard_default_message" do
  #     span class: "blank_slate" do
  #       span I18n.t("active_admin.dashboard_welcome.welcome")
  #       small I18n.t("active_admin.dashboard_welcome.call_to_action")
  #     end
  #   end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do

      column do
        panel "Users" do
          ul do
            li link_to("Users registered", admin_users_path)+": #{User.count}"
            li link_to("Admin Users registered", admin_admin_users_path)+": #{AdminUser.count}"
          end
        end
      end

      column do
        panel "Recent Pets admitted to PATS" do
          ul do
            Pet.last(5).map do |pet|
              li link_to(pet.name, admin_pet_path(pet))
            end
          end
        end
      end

      
      column do
        panel "Recent Procedures made at PATS" do
          ul do
            Procedure.last(5).map do |procedure|
              li link_to(procedure.name, admin_procedure_path(procedure))

            end
          end
        end
       
      end
    end #end columns

    panel "Pets added per day" do
      render 'partials/columnchart'
    end

    panel "Pets added per gender" do
      render 'partials/gender_pet'
    end

    panel "Pets added per animal" do
      render 'partials/animal_pet'
    end

    panel "Procedure length" do
      render 'partials/procedure_time'
    end

    panel "Owner states" do 
      render 'partials/geo_owners' 
    end 

  end # content
end