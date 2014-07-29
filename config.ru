require "rubygems"
require "sinatra"
require "studio_grep"
require "studio_grep/web"

## Unicorn self-process killer
#require 'unicorn/worker_killer'
#
## Max requests per worker
#use Unicorn::WorkerKiller::MaxRequests, 3072, 4096
#
## Max memory size (RSS) per worker
#use Unicorn::WorkerKiller::Oom, (192*(1024**2)), (256*(1024**2))

run StudioGrep::Web
