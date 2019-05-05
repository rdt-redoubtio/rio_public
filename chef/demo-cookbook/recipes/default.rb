#
# Cookbook:: demo-cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Start Service and configure automatic start on reboot
include_recipe 'powershell::powershell5'

dsc_script 'Install-SNMP-Service' do
	code <<-EOH
  WindowsFeature SnmpService
  {
    Ensure = 'Present'
    Name = 'SNMP-Service'
  }
  EOH
  timeout 600
end

dsc_script 'Install-SNMP-WMI-Provider' do
  code <<-EOH
  WindowsFeature SnmpService
  {
    Ensure = 'Present'
    Name = 'SNMP-WMI-Provider'
  }
  EOH
  timeout 600
end

windows_service 'SNMP' do
	action [:enable, :start]
end
