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



end
