require "bundler/gem_tasks"

namespace :manifest do
  task :diff do
    system("mast -D -b")
  end

  task :update do
    system("mast -u -b")
  end
end
