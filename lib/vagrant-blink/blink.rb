require 'optparse'
require 'vagrant'

require Vagrant.source_root.join("plugins/commands/up/start_mixins")

module VagrantBlink

  class Blink < Vagrant.plugin(2, :command)

    include VagrantPlugins::CommandUp::StartMixins

    def self.synopsis
      'destroys then creates machine'
    end

    def execute
      options = {}

      opts = OptionParser.new do |o|
        o.banner = "Usage: vagrant blink [vm-name]"
        o.separator ""
        build_start_options(o, options)
      end

      # Parse the options
      argv = parse_options(opts)
      return if !argv

      with_target_vms argv do |machine|
        machine.action :destroy, :force_confirm_destroy => true
        machine.action :up
      end

      0
    end

  end

end
