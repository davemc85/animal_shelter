require_relative('../db/sql_runner.rb')
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
    return "#{@first_name} #{@last_name}"
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



end
