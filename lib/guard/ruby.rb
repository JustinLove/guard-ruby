require 'guard'
require 'guard/guard'

module Guard
  module Ruby < Guard
    VERSION = "0.0.1"

    def start
      run_all
    end

    def run_all
      run_on_change(Watcher.match_files(self, Dir.glob('*.rb')))
    end

    def run_on_change(paths)
      paths.each {|path| system("ruby #{path}")}
  end
end
