require 'action_field/core_ext'
require 'action_field/acts_as_action_field'

module ActionField
end

::ActiveRecord::Base.send :include, ActionField::ActsAsActionField