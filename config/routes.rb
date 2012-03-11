ActionController::Routing::Routes.draw do |map|
   map.with_options :controller => 'init_select' do |init_select|
    init_select.with_options :conditions => {:method => :get} do |init_select|
      init_select.connect 'projects/:project_id/select_models', :action =>'select_models'
      init_select.connect 'projects/:project_id/model/:selected_model/select_activities/', :action => 'select_activities'
      init_select.connect 'projects/:project_id/view_process_framework', :action => 'view_process_framework'
    end
  end
  
   map.with_options :controller => 'admin_process_models' do |admin_process_models|
    admin_process_models.with_options :conditions => {:method => :get} do |admin_process_models|
      admin_process_models.connect 'admin_process_models', :action => 'index'
      admin_process_models.connect 'admin_process_models/:parent_type/:parent_id/show_subs', :action => 'show_subs'
      admin_process_models.connect 'admin_process_models/:type/new', :action => 'new_elem'
      admin_process_models.connect 'admin_process_models/:type/:elem/show_details', :action => 'show_details'
    end
   
  end
    
end

