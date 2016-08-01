
include_recipe 'chef-vault'

users = chef_vault_item("ckrst", "users2")

users.delete('id')

# Creates the ckrst group
group 'ckrst' do
	action :create
end

# Creates ckrst team users and import SSH public keys
users.each do |name, properties|
    user name do
        supports :manage_home => true
        comment 'CKrst member'
        home "/home/#{name}"
        shell '/bin/bash'
        password properties['password']
        group 'ckrst'
        action :create
    end

    sudo name do
        user name
        runas 'ALL'
        commands ['ALL']
	end

	# ssh_authorize_key name do
	# 	user name
	# 	group 'ckrst'
	# 	keytype 'ssh-rsa'
	# 	comment "#{name}@ckrst"
    #     key properties['public_key']
    # end

end
