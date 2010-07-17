require 'pathname'

Pathname.module_eval do
  def self.local(path)
    new(File.expand_path(File.join('..', path), caller.first))
  end
end
