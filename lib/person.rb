class Person

  attr_reader :name, :dob

  def self.instance
    @person
  end

  def self.create(name,dob)
    @person = Person.new(name, dob)
  end

  private
  def initialize (name,dob)
    @name = name
    @dob = dob
  end

end
