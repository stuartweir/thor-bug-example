require 'thor'
require_relative 'subdir/thing1'
require_relative 'subdir/thing2'

module Example
  module Subdir
    class Tasks < Thor
      include Thor::Actions
      include Thing1
      include Thing2

      namespace 'subdir'
      add_runtime_options!

      desc 'all YOUR_NAME', 'Do all the things.'
      class_option :skip_thing1, type: :boolean, desc: 'Skip doing thing1'
      class_option :skip_thing2, type: :boolean, desc: 'Skip doing thing2'
      def all(name)
        say "Starting to do things for #{name}", :green
        require 'pry-byebug'; binding.pry
        unless options.skip_thing1
          say 'Running thing1...', :green
          invoke 'thing1'
        end

        unless options.skip_thing2
          say 'Running thing2...', :green
          invoke 'thing2'
        end
      end
    end
  end
end
