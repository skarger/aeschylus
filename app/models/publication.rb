class Publication < ActiveRecord::Base
  attr_accessible :description, :name, :political_bent, :url
end
