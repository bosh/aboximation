require 'digest/md5'

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "custom-cookbooks"]
    chef.add_recipe "apt"
    chef.add_recipe "rvm::system"
    chef.add_recipe "rvm::vagrant"

    chef.json = {
      "rvm" => {
        "default_ruby" => "ruby-2.0.0-p195",
        "group_users" => ["vagrant"],
        "vagrant" => { "system_chef_solo" => '/opt/vagrant_ruby/bin/chef-solo' }
      }
    }
  end

  #config.vm.provision :shell, inline: "echo echo example > shell.sh"
  #config.vm.provision :shell, path: "shell.sh"
end
