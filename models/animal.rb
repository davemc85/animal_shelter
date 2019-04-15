require_relative('../db/sql_runner.rb')
require_relative( 'owner.rb')
require('pry-byebug')

class Animal

  attr_reader :id
  attr_accessor :name, :admission_date, :type, :breed, :age, :status, :child_friendly, :needs_outside_space, :needs_exercise, :profile_pic, :owner_id

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @admission_date = options['admission_date']
    @type = options['type']
    @breed = options['breed']
    @age = options['age'].to_i
    @status = options['status']
    @child_friendly = options['child_friendly']
    @needs_outside_space = options['needs_outside_space']
    @needs_exercise = options['needs_exercise']
    @profile_pic = options['profile_pic']
    @owner_id = options['owner_id'].to_i
  end

  def save()
    sql = "INSERT INTO animals
    (
      name, admission_date, type, breed, age, status, child_friendly, needs_outside_space, needs_exercise, profile_pic, owner_id) VALUES
      ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11) RETURNING id"
    values = [@name, @admission_date, @type, @breed, @age, @status, @child_friendly, @needs_outside_space, @needs_exercise, @profile_pic, @owner_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM animals"
    animals = SqlRunner.run(sql)
    result = animals.map{|animal| Animal.new(animal)}
    return result
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM animals WHERE id = $1"
    values = [id]
    animal_hash_array = SqlRunner.run(sql, values)
    return Animal.new(animal_hash_array.first())
  end

  def update()
    sql = "UPDATE animals SET (name, admission_date, type, breed, age, status, child_friendly, needs_outside_space, needs_exercise, profile_pic, owner_id) = ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11) WHERE id = $12"
    values = [@name, @admission_date, @type, @breed, @age, @status, @child_friendly, @needs_outside_space, @needs_exercise, @profile_pic, @owner_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM animals WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end



  def kid_friendly
    if @child_friendly == "t"
      "I love children"
    else
      "I'm not great with kids"
    end
  end

  def outside_space
    if @needs_outside_space == "t"
      "I love playing outside"
    else
      "I prefer being inside"
    end
  end

  def exercise
    if @needs_exercise == "t"
      "I need lots of attention and I love to play"
    else
      "I can keep myself amused"
    end
  end

  def owner() # get animal info from owner id
    sql = "SELECT * FROM owners WHERE id = $1"
    values = [@owner_id]
    result = SqlRunner.run(sql, values)[0]
    return Owner.new(result)
  end

  def self.all_available
    sql = "SELECT * FROM animals WHERE status = $1"
    values = ["available"]
    animals = SqlRunner.run(sql, values)
    result = animals.map{|animal| Animal.new(animal)}
    return result
  end

  def self.training
    sql = "SELECT * FROM animals WHERE status = $1"
    values = ["in training"]
    animals = SqlRunner.run(sql, values)
    result = animals.map{|animal| Animal.new(animal)}
    return result
  end

  def self.vet
    sql = "SELECT * FROM animals WHERE status = $1"
    values = ["in vet care"]
    animals = SqlRunner.run(sql, values)
    result = animals.map{|animal| Animal.new(animal)}
    return result
  end

  def self.adopted
    sql = "SELECT * FROM animals WHERE NOT owner_id = $1"
    values = [1]
    animals = SqlRunner.run(sql, values)
    result = animals.map{|animal| Animal.new(animal)}
    return result
  end

  def self.search(params)
    sql = "SELECT * FROM animals WHERE type=$1"
    values = [params[:type].capitalize]
    animals = SqlRunner.run(sql, values)
    result = animals.map{|animal| Animal.new(animal)}
    return result
  end





end
