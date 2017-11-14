module ActionField
  module ActsAsActionField
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def action_field(options = {})
        on = Array(options[:on])
        before_create :action_field_execute if on.empty? || on.include?(:create)
        before_update :action_field_execute if on.empty? || on.include?(:update)
        options.delete(:on)

        include ActionField::ActionFieldInstanceMethods

        cattr_accessor :action_fields

        self.action_fields = Hash.new.tap do |h|
          options.each do |action, fields|
            fields.each do |field|
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
end