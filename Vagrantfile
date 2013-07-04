Vagrant.configure("2") do |config|
  # $ vagrant plugin install vagrant-berkshelf
  config.berkshelf.enabled = true
  
  # $ vagrant plugin install vagrant-omnibus
  config.omnibus.chef_version = "10.16.2"

  config.vm.box      = 'opscode-centos-6.4'
  config.vm.box_url  = 'https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_centos-6.4_provisionerless.box'
  config.vm.hostname = 'cap-vagrant'

  # access jenkins at http://localhost:8081 on the host
  config.vm.network :forwarded_port, :guest => 8080, :host => 8081

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "jenkins"
  end
end
