class CoffeeBean < ActiveRecord::Base
  attr_accessible :description, :name, :supplier_id

  belongs_to :supplier

  letsrate_rateable "overall", "flavour", "aroma", "bitterness"

end
