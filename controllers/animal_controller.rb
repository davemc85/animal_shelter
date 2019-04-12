require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/animal.rb' )
also_reload( '../models/*' )


get '/animals' do
  @animals = Animal.all()
  erb(:"animals/index")
end

get '/animals/new' do
  erb(:"animals/new")
end

get '/animals/:id' do
  @animal = Animal.find_by_id( params['id'])
  erb(:"Animals/show")
end
