require 'bundler'
namespace :bundler do
  Bundler::GemHelper.install_tasks(:name => 'synapses-cas')
end
