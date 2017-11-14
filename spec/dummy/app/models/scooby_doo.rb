class ScoobyDoo < ActiveRecord::Base
  action_field downcase: [:name]
end
