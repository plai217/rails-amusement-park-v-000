class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  after_initialize :defaults

  def defaults
    self.admin ||= false
  end

  def mood
    happiness > nausea ? "happy" : "sad"
  end
end
