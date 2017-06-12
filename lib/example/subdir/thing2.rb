require 'thor'

module Example
  module Subdir
    module Thing2
      def self.included(base)
        base.class_eval do
          class_option :statement, desc: 'Say something to name', default: 'Bye'
          desc 'thing2 NAME', 'do thing 2 with name'
          def thing1(name)
            puts options.statement ? "#{options.statement}, #{name}" : name.to_s
          end
        end
      end
    end
  end
end