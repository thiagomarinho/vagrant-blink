# Vagrant Blink

This plugin provides a shortcut to destroy and recreate a virtual machine. In other words, to use `vagrant blink machine` is the same to use `vagrant destroy -f machine && vagrant up machine`. It's particularly useful when you need to destroy and create a machine multiple times, for example, when testing provisioning with [Puppet](https://puppet.com/) modules.

## Installation

This project is not yet available in plugins repository. So, you'll need to follow these steps to install it:

- Clone this repo:

```
git clone git@github.com:thiagomarinho/vagrant-blink.git
```

- Then build the gem:

```
gem build vagrant-blink.gemspec
```

- And then install it as a vagrant plugin:

```
vagrant plugin install vagrant-blink-0.1.0.gem
```

## Usage

```
vagrant blink machine
```

This command will destroy then create the virtual machine.

> Warning: this will destroy the virtual machine without confirmation, so be careful!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/thiagomarinho/vagrant-blink/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
