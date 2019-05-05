#
# Cookbook:: demo-cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Start Service and configure automatic start on reboot
windows_service 'SNMP' do
	action [:enable, :start]
end
