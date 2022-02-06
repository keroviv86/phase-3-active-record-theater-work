class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map do |audition|
        audition.actor
  end
  def location
    self.auditions.map do |audition|
        audition.location
  end

end