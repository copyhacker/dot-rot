DOTROT_HOME = File.dirname(__FILE__)
DOTROT_BACKUPS = File.join(DOTROT_HOME, 'backups')

# TODO: Move to yaml or somesuch
DOTROT_FILES = %w{ bash_profile profile bashrc boom gitconfig }

require 'lib/dotrot'

task :default => [:install]

desc "Install dotfiles"
task :install do
  DOTROT_FILES.each do |source|
    symlink_dotfile source
  end

  puts "\nNow run this command to reload the shell:\n\n"
  puts "  source ~/.bash_profile\n\n"
end

namespace :install do
  desc "Dry run, just print everything"
  task :dry_run do
    DOTROT_FILES.each do |source|
      symlink_dotfile source, true
    end
  end
end

namespace :backups do
  desc "Clobber backups"
  task :clobber do
    print "=> removing #{DOTROT_BACKUPS}... "
    FileUtils.rm_rf(DOTROT_BACKUPS)
    puts "done!"
  end
  
  desc "Restore backups"
  task :restore do
    print "=> restoring from backups... "
    FileUtils.mv File.join(DOTROT_BACKUPS, '*'), File.join(ENV['HOME']), :force => true
    puts "done!"
  end
end
