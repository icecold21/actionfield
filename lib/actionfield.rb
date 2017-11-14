require 'actionfield/core_ext'
require 'actionfield/acts_as_action_field'

::ActiveRecord::Base.send :include, ActionField::ActsAsActionField