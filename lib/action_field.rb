require 'action_field/core_ext'
require 'action_field/acts_as_action_field'

::ActiveRecord::Base.send :include, ActionField::ActsAsActionField