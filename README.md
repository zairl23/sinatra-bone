#### sinatra for static md file guid

**install markx**

    sudo npm install markx -g

    markx inputs.md >> inputs.html

**config gemfile**

    source 'http://rubygems.org'

    gem 'sinatra'
    gem 'rdiscount'

**config app**

    # myapp.rb
    require 'sinatra'
    require 'rdiscount'

    set :public_folder, File.dirname(__FILE__) + '/static'
    #put *md filds in /views
 
    get '/' do
      'Hello world!'
    end

    # static file
    app '/index' do
        markdown :README
    end

**deploy**

add config.ru file

    require './app'
    run Sinatra::Application


create Gemfile.lock type:

    bundle install (--local)

    heroku apps:create backbone-sinatra

    heroku push heroku master
