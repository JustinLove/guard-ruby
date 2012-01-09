# Guard-Ruby

This is a trivial [guard](http://github.com/guard/guard) extension that runs ruby files.  You might use it to develop benchmarks or other small one-off scripts that don't require much ceremony.

## Install

Install the gem:

    $ gem install guard-ruby

Or add it to your Gemfile:

    gem 'guard-ruby'

Add an example to your Guardfile:

    $ guard init ruby

## Usage

Please read the [Guard usage doc](https://github.com/guard/guard#readme)

## Guardfile

The original motivation was for developing benchmarks - single file ruby projects that should be re-run each time they change.

    guard 'ruby' do
      # run any benchmarking files
      watch(/bench.*\.rb/)
    end

If you provide a block, the return value will be used as the script to run.

    guard 'ruby' do
      # run a program when it's data is changed
      watch(/.*\.csv/) { 'convert.rb' }
    end
