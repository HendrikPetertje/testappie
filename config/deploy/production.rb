
set :stage, :production

role :app, %w{95.85.39.46:22}
role :web, %w{95.85.39.46:22}
role :db,  %w{95.85.39.46:22}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server '95.85.39.46:22', user: 'root', roles: %w{web app db}

set :deploy_to, "/home/root/testapp/production"

set :rails_env, 'production'       # If the environment differs from the stage name
set :branch, 'master'
