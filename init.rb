require 'redmine'

# Patches to the Redmine core
require 'dispatcher'

Redmine::Plugin.register :redmine_openpne_jp_plugin do
  name 'OpenPNE Redmine'
  author 'Kousuke Ebihara'
  description 'This is a plugin for Redmine'
  version '0.0.1'
end
