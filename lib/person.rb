require "date"
class Person

  def self.instance
    @person
  end

  def self.create(name,dd,mm,yy)
    @person = Person.new(name,dd,mm,yy)
  end

  def get_age
    @age = Date.today.year - @dob.year
    @age -= 1 if Date.today.yday < @dob.yday
    @age
  end

  def get_daystobirthday
    (Date.parse("#{@dob.day}-#{@dob.month}-#{Date.today.year + 1}") - Date.today).to_i
  end

  def isBirthday
    Date.today.month == @dob.month && Date.today.day ==@dob.day ? true : false
  end

  def get_name
    @name
  end

  private
  def initialize (name,dd,mm,yy)
    @name = name
    @dob = Date.parse(yy.to_s<<"-"<<mm.to_s<<"-"<<dd.to_s)
    @age = get_age
  end

end
