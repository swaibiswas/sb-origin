#
# Cookbook:: test_cookbook
# Recipe:: test_user
#
# Copyright:: 2018, Swati Biswas, All Rights Reserved.
#
package 'net-tools' do
 action :install
end

package 'httpd' do
 action :install
end
