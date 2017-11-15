module ActionField
  module ActsAsActionField
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def action_field(options = {})
        include ActionField::ActionFieldInstanceMethods
        cattr_accessor :action_fields

        on = Array(options[:on])
        before_create :action_field_execute if on.empty? || on.include?(:create)
        before_update :action_field_execute if on.empty? || on.include?(:update)
        options.delete(:on)

        active_record_fields = self.column_names.collect(&:to_sym)
        self.action_fields = Hash.new.tap do |h|
          options.each do |action, fields|
            fields.each do |field|
              raise Exceptions::FieldNotFound, "Field :#{field} not found" if !field.in?(active_record_fields)
              h[field] ||= []
              h[field] << action
            end
          end
        end
      end
    end
  end

  module ActionFieldInstanceMethods
    def action_field_execute
      self.class.action_fields.each do |field, actions|
        actions.each do |action|
          self[field] = self[field].try(action) || self[field]
        end
      end
    end
  end

  module Exceptions
    class FieldNotFound < StandardError; end
  end
end