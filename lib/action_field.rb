require 'action_field/core_ext'
require 'action_field/acts_as_action_field'


puts "ActionField Loaded"
::ActiveRecord::Base.send :include, ActionField::ActsAsActionField