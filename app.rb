    # myapp.rb
    require 'sinatra'
    require 'rdiscount'
	
    set :public_folder, File.dirname(__FILE__) + '/static'

    get '/' do
      markdown :README
    end
