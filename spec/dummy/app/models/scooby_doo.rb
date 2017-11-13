class ScoobyDoo < ActiveRecord::Base
  acts_as_action_field downcase: [:name]
end
