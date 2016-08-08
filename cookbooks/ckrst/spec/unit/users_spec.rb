require 'spec_helper'

describe 'ckrst::users' do
    let (:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

    before do
        Chef::Recipe.any_instance.stub(:chef_vault_item).with("ckrst", "users2").and_return(
        {
            "id" => "my_item",
            "foo" => {
                "password" => "123456",
                "public_key" => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC8YpvFzpSVW5HFsty/gMeS7oLdIjIPEWdRJ+73Zf5uxTfGU0y5JjzkN+LltTaLqr4vAOkSduWbxZW5nh1nZ+wXLHybwYCHkmj+lAoM5eXTI9Tvcg9sHWk9+6gzOTIG/BVpsgL98OUPdT3xKCds6mtZTpUH9aCIkZ32piyRQtugawHSP9Ildq4tEy4ijyIL5fMDI3lYRdz5jgznqGK2cduet1ALRL88+DXbd9U470AWGzrTmXEJRTsI1I0DBuY+0BSrsI2/Bae09eW3ANX+DbnTGixIS+zfH2sToyu7eiruf+7up1T9hpoRjXzwXToEbLEY3CEvaxPZjBnA6PVBA2YR"
            },
            "bar" => {
                "password" => "654321",
                "public_key" => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC8YpvFzpSVW5HFsty/gMeS7oLdIjIPEWdRJ+73Zf5uxTfGU0y5JjzkN+LltTaLqr4vAOkSduWbxZW5nh1nZ+wXLHybwYCHkmj+lAoM5eXTI9Tvcg9sHWk9+6gzOTIG/BVpsgL98OUPdT3xKCds6mtZTpUH9aCIkZ32piyRQtugawHSP9Ildq4tEy4ijyIL5fMDI3lYRdz5jgznqGK2cduet1ALRL88+DXbd9U470AWGzrTmXEJRTsI1I0DBuY+0BSrsI2/Bae09eW3ANX+DbnTGixIS+zfH2sToyu7eiruf+7up1T9hpoRjXzwXToEbLEY3CEvaxPZjBnA6PVBA2YR"
            },
        }
        )
    end

    it 'creates users' do
        chef_run.converge(described_recipe)
        expect(chef_run).to create_user("foo")
        expect(chef_run).to create_user("bar")
    end

    it 'creates sudoers' do
        chef_run.converge(described_recipe)
        expect(chef_run).to install_sudo("foo")
        expect(chef_run).to install_sudo("bar")
    end

    it 'creates group' do
        chef_run.converge(described_recipe)
        expect(chef_run).to create_group('ckrst')
    end

end
