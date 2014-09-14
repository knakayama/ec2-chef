require "spec_helper"

describe package("chef-client") do
    it { should be_installed }
end

describe service("chef-client") do
    it { should be_enabled }
    it { should be_running }
end

describe file("/etc/chef/client.rb") do
    it { should be_file }
    its(:content) { should match /chef_server_url \"#{ENV["TARGET_HOST"]}:443\"/ }
    its(:content) { should match /node_name \"#{ENV["TARGET_HOST"]}\"/ }
end

