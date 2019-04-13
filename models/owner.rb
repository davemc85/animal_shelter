require_relative('../db/sql_runner.rb')
require_relative('animal.rb')
require('pry-byebug')

class Owner

  attr_reader :id, :first_name, :last_name, :location, :has_children, :has_outside_space, :likes_exercise

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @location = options['location']
    @has_children = options['has_children']
    @has_outside_space = options['has_outside_space']
    @likes_exercise = options['likes_exercise']

  end

  def full_name()
    return "#{@first_name.capitalize} #{@last_name.capitalize}"
  end


  def save()
    sql = "INSERT INTO owners
    (
      first_name, last_name, location, has_children, has_outside_space, likes_exercise) VALUES
      ($1, $2, $3, $4, $5, $6) RETURNING id"
    values = [@first_name, @last_name, @location, @has_children, @has_outside_space, @likes_exercise]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM owners"
    owners = SqlRunner.run(sql)
    result = owners.map{|owner| Owner.new(owner)}
    return result
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM owners WHERE id = $1"
    values = [id]
    owner_hash_array = SqlRunner.run(sql, values)
    return Owner.new(owner_hash_array.first())
  end

  def delete()
    sql = "DELETE FROM owners WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def needs_children_friendly
    if @has_children == "t"
      "I need a child friendly animal"
    else
      "No, I can cater for any animal"
    end
  end

  def outdoor_space
    if @has_outside_space == "t"
      "I have an outside area for the animal to enjoy"
    else
      "Sadly, I don't have an outside area"
    end
  end

  def owner_exercise
    if @likes_exercise == "t"
      "I live an active life, which an animal would enjoy"
    else
      "I would prefer a low maintenance animal"
    end
  end


  def animals() # get all animals from one owner
    sql = "SELECT * FROM animals WHERE owner_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map { |pet| Animal.new(pet)}
  end


end
