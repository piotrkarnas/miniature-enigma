Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.provider :virtualbox do |vb|
    vb,gui = true
  end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "deploy_jenkins_job.yml"
  end
end