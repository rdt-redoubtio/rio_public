# # encoding: utf-8

# Inspec test for recipe demo-cookbook::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe windows_feature('SNMP-Service') do
  it { should be_installed }
end

describe windows_feature('SNMP-WMI-Provider') do
  it { should be_installed }
end

describe service('SNMP') do
  it { should be_running }
end
