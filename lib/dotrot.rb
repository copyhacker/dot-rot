class KeyBindingsInstaller
  PATH = File.join(ENV['HOME'], *%W[Library KeyBindings DefaultKeyBinding.dict])
  
  def self.install!
    return if File.exist?(PATH)
    puts '** Installing KeyBindings'
    puts ' * Creating ~/Library/KeyBindings directory'
    FileUtils.mkdir_p(File.dirname(PATH))
    puts ' * Linking file...'
    FileUtils.ln_s \
      source = File.join(DOTROT_HOME, 'nakajima', 'DefaultKeyBinding.dict'),
      target = PATH
    puts ' * done!'
  end
end

def symlink_dotfile(name, dry_run = false)
  source = File.join(DOTROT_HOME, "dot.#{name}")
  target = File.join(ENV['HOME'], ".#{name}")
  
  puts "** backing up #{name}..."
  backup_dotfile(target, dry_run)

  puts "** symlinking #{name}... "
  puts "** linking     #{source} to #{target}"
  FileUtils.ln_s source, target unless dry_run
  puts '** done!'
  puts
end

def backup_dotfile(target, dry_run = false)
  if File.exists?(target)
    name = File.basename(target)
    puts "** moving old #{name} to #{DOTROT_BACKUPS}/#{name}"

    unless dry_run
      FileUtils.rm_rf(File.join(DOTROT_BACKUPS, name))
      FileUtils.mkdir_p(DOTROT_BACKUPS)
      FileUtils.mv target, File.join(DOTROT_BACKUPS, name), :force => true
    end
  end
end
