require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/animal.rb' )
require_relative( '../models/owner.rb' )
also_reload( '../models/*' )


get '/animals' do
  @animals = Animal.all()
  erb(:"animals/index")
end

get '/animals/search' do
  erb(:"animals/search")
end

post '/animals/search' do
  @animals = Animal.search(params)
  if @animals == []
    erb(:"animals/not_found")
  else
    erb(:"animals/search_result")
  end
end

post 'animals/match' do
  @animals = Animal.match(params)
  if @animals = []
    erb(:"animals/no_match")
  else
    erb(:"animals/success")
  end
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

get '/animals/adopted' do
  @owners = Owner.all()
  @animals = Animal.adopted
  erb(:"animals/adopted")
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






post '/animals/:id/delete' do
  animal = Animal.find_by_id(params['id'])
  animal.delete
  redirect to '/animals'
end
