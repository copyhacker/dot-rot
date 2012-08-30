DOTROT_HOME = File.dirname(__FILE__)
DOTROT_BACKUPS = File.join(DOTROT_HOME, 'backups')

# TODO: Move to yaml or somesuch
DOTROT_FILES = %w{ bashrc bash_profile profile screenrc boom gitconfig git-prompt.conf git-prompt.sh }
EXTRA_DOTFILES_TO_BACKUP = %w{ vim vimrc gvimrc }

require "#{DOTROT_HOME}/lib/dotrot"

task :default => [:install]

desc "Install dotfiles"
task :install do
  puts "Backing up extra files."
  EXTRA_DOTFILES_TO_BACKUP.each do |file|
    puts "** backing up #{file}..."
    backup_dotfile(File.join(ENV['HOME'], ".#{file}"))
  end
  
  DOTROT_FILES.each do |source|
    symlink_dotfile source
  end

  puts "Next steps (if you ran the rake task manually):"
  puts "Install vim config:"
  puts "curl -Lo- https://bit.ly/janus-bootstrap | bash"
  puts "Now run this command to reload the shell:\n\n"
  puts " cd ~ && source .bash_profile\n\n"
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
