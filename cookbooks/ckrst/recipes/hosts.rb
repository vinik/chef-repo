
myNodes = search(:node, 'chef_environment:' + node.chef_environment)
myNodes.each do |ckrst_node|
    if ckrst_node != node
        hostsfile_entry ckrst_node['ipaddress'] do
            hostname ckrst_node['hostname']
            action [:create_if_missing, :update]
        end
    end
end
