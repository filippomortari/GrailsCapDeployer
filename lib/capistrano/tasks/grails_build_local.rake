# -*- mode: ruby -*- 
namespace :deploy do
    desc 'run grails build'
    task :grails_build_local do
    #run_locally doesn't play nice with the 'on' directive (it's 'on' localhost)
      run_locally do
	execute "[ -d tmp ] || mkdir tmp"
	execute "rm tmp/*"
        execute "grails war tmp/#{fetch(:application)}.war"
      end
    end  
end 
