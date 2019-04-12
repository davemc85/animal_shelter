require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/owner.rb' )
also_reload( '../models/*' )


get '/owners' do
  @owners = Owner.all()
  erb(:"owners/index")
end

get '/owners/new' do
  erb(:"owners/new")
end

get '/owners/:id' do
  @owner = Owner.find_by_id( params['id'])
  erb(:"owners/show")
end
