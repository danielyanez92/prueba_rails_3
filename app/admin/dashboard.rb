ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel 'Cantidad de Empresas:' do
             Company.all.count
        end
        panel 'Cantidad de Usuarios:' do
             User.all.count
        end
        panel 'Cantidad de Reclamos:' do
             Complain.all.count
        end
      end
    end
  end # content
end
