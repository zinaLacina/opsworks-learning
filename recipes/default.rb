#
# Cookbook:: mydocker_stack
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

execute 'apt-get update' do
    command 'apt-get update'
end

package 'apache2' do
    action :install
end

service 'apache2' do
    action [:start, :enable]
end

cookbook_file '/var/www/html' do
    source 'index.html'
    mode '0644'
    action :create
end
