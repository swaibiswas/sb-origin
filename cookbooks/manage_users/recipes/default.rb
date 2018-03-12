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

if node['platform'] == 'centos'
 #do something
end
