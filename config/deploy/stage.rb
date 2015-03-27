set :stage, :production

#role :app, %w{vagrant@localhost}

server '127.0.0.1', user: 'vagrant', roles: %w{app}

set :ssh_options, {
 keys: %w(/home/fmortari/.ssh/id_rsa),
 port: 33022
}

set :deploy_to, '/home/vagrant'
set :webapps_folder, '/opt/jetty/webapps'
