template '/etc/motd' do
    action :create
    source 'first_template.erb'
end

package 'httpd' do
    action :install
end

package 'git' do
    action :install
end

package 'tree' do

    action :install
end

service 'httpd' do

    action [:enable, :start]

end

file '/hello.txt' do
     content 'Hello I am editing this file WOrld!'
end

template '/var/www/html/index.html' do
    action  :create
    source  'index.html.erb'
end


