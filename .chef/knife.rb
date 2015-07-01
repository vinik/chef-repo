# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vkirst"
client_key               "#{current_dir}/vkirst.pem"
validation_client_name   "ckrst-validator"
validation_key           "#{current_dir}/ckrst-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/ckrst"
cookbook_path            ["#{current_dir}/../cookbooks"]
