require_relative('../db/sql_runner.rb')

class Animal

  attr_reader :id, :name, :admission_date, :type, :breed, :age, :status, :child_friendly, :needs_outside_space, :needs_exercise, :profile_pic, :owner_id

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

  def delete()
    sql = "DELETE FROM animals WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end


end
