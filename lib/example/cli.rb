require 'thor'
require_relative 'subdir'
require_relative 'subdir/thing2'

module Example
  class Cli < Thor
    include Thor::Actions
    include Subdir::Thing2
    add_runtime_options!

    desc 'subdir', 'Do stuff'
    subcommand 'subdir', Example::Subdir::Tasks

  end
end
