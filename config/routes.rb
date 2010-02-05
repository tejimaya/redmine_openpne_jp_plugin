ActionController::Routing::Routes.draw do |map|
  map.connect 'projects/:id/members.:format', :controller => 'openpne_members', :action => 'new', :format => /xml/
  map.connect 'users/:username.:format', :controller => 'openpne_users', :action => 'show', :format => /xml/
end
