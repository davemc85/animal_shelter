class Animal

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


end
