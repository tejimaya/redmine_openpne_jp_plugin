ActionController::Routing::Routes.draw do |map|
  map.connect 'projects/:id/members.xml', :controller => 'openpne_members', :action => 'new', :format => /xml/
  map.connect 'users/:username.xml', :controller => 'openpne_users', :action => 'show', :format => /xml/
end
