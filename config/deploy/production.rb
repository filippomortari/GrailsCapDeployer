set :stage, :production

#role :app, %w{vagrant@localhost}

server 'your_remote_server_here', user: 'deploy', roles: %w{app}

set :ssh_options, {
 keys: %w(/home/fmortari/.ssh/id_rsa),
 port: 55022
}

set :deploy_to, '/home/deploy'
set :webapps_folder, '/opt/jetty/webapps'
