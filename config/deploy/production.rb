server "128.199.230.36", :web, :app, :db, primary: true
set :deploy_to, "/home/#{user}/#{application}" # Directory in which the deployment will take place

set :branch, "master"
