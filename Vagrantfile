Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "public_network"
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y nginx
    sudo rm /etc/nginx/nginx.conf
    sudo ln -s /vagrant/nginx/nginx.conf /etc/nginx/nginx.conf
    sudo service nginx restart
  SHELL
end
