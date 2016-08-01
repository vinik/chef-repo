#require 'chefspec'
require 'spec_helper'

describe 'ckrst::hosts' do
    let (:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

    before do
        stub_search("node", "chef_environment:_default").and_return(['ipaddress' => '192.168.1.123', 'hostname' => 'foo'])
    end

    it 'creates hosts entry' do
        chef_run.converge(described_recipe)
        expect(chef_run).to update_hostsfile_entry("192.168.1.123").with_hostname('foo')
    end

end
