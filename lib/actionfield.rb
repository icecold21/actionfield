require 'actionfield/core_ext'
require 'actionfield/acts_as_action_field'


puts "ActionField Loaded"
::ActiveRecord::Base.send :include, ActionField::ActsAsActionField