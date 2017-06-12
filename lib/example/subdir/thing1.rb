require 'thor'

module Example
  module Subdir
    module Thing1
      def self.included(base)
        base.class_eval do
          class_option :say_hi, desc: 'Say hi', type: :boolean, default: false
          desc 'thing1 NAME', 'do thing 1 with name'
          def thing1(name)
            puts options.say_hi ? "Hi, #{name}" : name.to_s
          end
        end
      end
    end
  end
end