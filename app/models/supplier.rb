class Supplier < ActiveRecord::Base
  attr_accessible :name

  has_many :coffee_beans
end
