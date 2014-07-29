require 'studio_grep'
require 'dotenv'
Dotenv.load

module StudioGrep::Config
  def self.target_dir
    ENV.fetch('TARGET_DIR', "#{ENV['HOME']}/.znc/users/studio3104/moddata/log")
  end
end
