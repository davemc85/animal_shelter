require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/animal_controller.rb')
require_relative('controllers/owner_controller.rb')
also_reload( '../models/*' )


get '/' do
  erb( :index )
end
