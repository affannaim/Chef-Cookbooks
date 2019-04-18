# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server

package "apache2" do
  action :install
end
service "apache2" do
action :start
end
file "/tmp/file1" do
  content "Hello earth"
end
execute 'sample_execution' do
   command 'wget google.com -O /tmp/index.html'
   not_if {File.exists?("/tmp/index.html")}
end

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html
