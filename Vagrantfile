# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.define :nox do |box|
    # Every Vagrant virtual environment requires a box to build off of.
    box.vm.box = "precise64"
    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    box.vm.box_url = "http://files.vagrantup.com/precise64.box"
    
    # Boot with a GUI so you can see the screen. (Default is headless)
    #box.vm.boot_mode = :gui
    # add a hostonly network if desired
    #box.vm.network :hostonly, "33.33.33.151"

    box.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppetmanifests"
      puppet.manifest_file = "raspberry-nox.pp"
      puppet.module_path = "modules"
      puppet.options = ["--verbose", "--debug"]
    end

    box.vm.provision :shell, path: "base_provisioning.sh"
    box.vm.provision :shell, path: "node_provisioning.sh"

  end
end
