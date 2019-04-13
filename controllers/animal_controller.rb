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

get '/animals/available' do
  @animals = Animal.all_available
  erb(:"animals/available")
end

get '/animals/training' do
  @animals = Animal.training
  erb(:"animals/training")
end

get '/animals/vet' do
  @animals = Animal.vet
  erb(:"animals/vet")
end

get '/animals/:id' do
  @animal = Animal.find_by_id( params['id'])
  erb(:"animals/show")
end

get '/animals/:id/edit' do
  @owners = Owner.all()
  @animal = Animal.find_by_id(params['id'])
  erb(:"animals/edit")
end

post '/animals/:id' do
  @animal = Animal.new(params)
  @animal.update
  redirect to "/animals/#{params['id']}"
end

get '/animals/adopt' do
  @animals = Animal.all_available
  @owners = Owner.all
  erb(:"animals/adopt")
end


post '/animals/:id/delete' do
  animal = Animal.find_by_id(params['id'])
  animal.delete
  redirect to '/animals'
end
