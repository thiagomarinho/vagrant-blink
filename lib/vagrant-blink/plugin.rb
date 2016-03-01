module VagrantBlink

  class Plugin < Vagrant.plugin('2')
    name 'vagrant-blink'

    command 'blink' do
      require_relative 'blink'
      Blink
    end

  end

end
