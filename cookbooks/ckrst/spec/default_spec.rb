require 'chefspec'

describe 'ckrst::default' do
  let (:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'creates docker service' do
    chef_run.converge(described_recipe)
    expect(chef_run).to create_docker_service("default")
  end

  it 'pulls ubuntu image' do
    chef_run.converge(described_recipe)
    expect(chef_run).to pull_docker_image("ubuntu")
  end


end
