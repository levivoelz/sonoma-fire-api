# App
require "./app"

# DB Setup
require "sinatra/activerecord/rake"

task :start do
  sh "bundle exec shotgun --server=thin --port=9292 config.ru"
end
