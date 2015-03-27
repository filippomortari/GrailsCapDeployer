load 'lib/capistrano/tasks/grails_build_local.rake'

set :application, 'ROOT'
set :scm, :none


namespace :deploy do
  
  before :deploy, 'deploy:grails_build_local'
  before :deploy, 'deploy:stop_server'
  
  task :restart do
  end

  task :stop_server do
  on roles(:app) do
       execute "sudo service jetty stop"
    end
  end

  task :local_cp_to_webapps do
  on roles(:app) do
       execute "sudo cp #{fetch(:deploy_to)}/current/#{fetch(:application)}.war #{fetch(:webapps_folder)}/#{fetch(:application)}.war"
    end
  end
  
  task :start_server do
  on roles(:app) do
       execute "sudo service jetty start"
    end
  end

  after :deploy, 'deploy:local_cp_to_webapps'
  after :deploy, 'deploy:start_server'
  after :finishing, 'deploy:cleanup'
  

  

end
