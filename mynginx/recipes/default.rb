# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server

package "nginx" do
  action :install
end

service "nginx" do
action :start
end

file "/usr/share/nginx/file1" do
  content "Hello World"
end


# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html
