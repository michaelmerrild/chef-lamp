include_recipe "apt"
include_recipe "apache2"
include_recipe "apache2::mod_php5"
include_recipe "mysql::server"
include_recipe "php"

# Install additional packages
package "php5-mysql"
package "php5-gd"
package "php5-mcrypt"

#Create virtual host
web_app "default" do
  server_name "localhost"
  docroot "/vagrant/web/public"
end