include_recipe 'nginx::default'

nginx_site 'default' do
    action :disable
end

cookbook_file '/etc/nginx/sites-available/teabot' do
    notifies :reload, 'service[nginx]'
end

nginx_site 'teabot' do
    action :enable
end
