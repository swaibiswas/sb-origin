#
# Cookbook:: manage_users
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

items = data_bag('users')

items.each do |itemx|
  userx = data_bag_item('users',itemx)
  group userx['gid']
  userid = userx['uid']
  id = userx['id']
  user id  do
    gid userx['gid']
    uid userid
    shell userx['shell']
    home "/home/#{id}"
  end
end

search(:guestusers, "gid:guest*").each do |guestuser|
  group guestuser['gid']
end

if node['platform'] == 'centos'
 if node['java']['jdk_version'] == 1.7
  Chef::Log.info('***** in 1.7')
 elsif node['java']['jdk_version'] == 1.6
  Chef::Log.info('***** in 1.6')
 end
end

directory '/var/swati'

file '/var/swati/myfile.txt' do
  content "#{node['java']['jdk_version']} #{node['platform']}"
end

template '/var/swati/myfile2.txt' do
  source 'myfile.txt.erb'
  variables ({
    :thisisavariable => 'varValue'
  })
end
