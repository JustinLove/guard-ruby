require 'guard/compat/plugin'
require 'guard/ruby/version'

module Guard
  class Ruby < Plugin
    VERSION = Guard::GUARD_RUBY_VERSION

    def start
      run_all if options[:all_on_start]
    end

    def run_all
      run_on_change(Compat.matching_files(self, Dir.glob('*.rb')))
    end

    def run_on_change(paths)
      paths.each {|path| system("ruby #{path}")}
    end
  end
end
