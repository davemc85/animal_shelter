require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/animal.rb' )
require_relative( '../models/owner.rb' )
also_reload( '../models/*' )


get '/animals' do
  @animals = Animal.all()
  erb(:"animals/index")
end

get '/animals/new' do
  @owners = Owner.all()
  erb(:"animals/new")
end

post '/animals' do
  Animal.new(params).save
  redirect to '/animals'
end

get '/animals/:id' do
  @animal = Animal.find_by_id( params['id'])
  erb(:"Animals/show")
end

get '/animals/:id/edit' do
  @animal = Animal.find_by_id(params['id'])
  erb(:edit)
end


post '/animals/:id/delete' do
  animal = Animal.find_by_id(params['id'])
  animal.delete
  redirect to '/animals'
end
