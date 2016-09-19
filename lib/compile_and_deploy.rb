require 'byebug'
require 'bundler/setup'
require 'ethereum'

def create_client
  ipc_endpoint = ENV['GETH_ENDPOINT'] # as reported by geth when you start it
  STDERR.puts "Connecting to Ethereum services at #{ipc_endpoint}."
  Ethereum::IpcClient.new(ipc_endpoint, true)
end

client = create_client
debugger
init = Ethereum::Initializer.new("#{ENV['PWD']}/lib/contracts/SimpleNameRegistry.sol", client)
init.build_all
simple_name_registry_instance = SimpleNameRegistry.new
simple_name_registry_instance.deploy_and_wait(60)
