require 'byebug'
require 'bundler/setup'
require 'ethereum'

ipc_endpoint = ENV['GETH_ENDPOINT'] # as repoorted by geth when you start it
STDERR.puts "Connecting to Ethereum services at #{ipc_endpoint}."
client = Ethereum::IpcClient.new(ipc_endpoint)
