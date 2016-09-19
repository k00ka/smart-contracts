require 'byebug'
require 'bundler/setup'
require 'ethereum'

ipc_endpoint = ENV['GETH_ENDPOINT'] # as repoorted by geth when you start it
STDERR.puts "Connecting to Ethereum services at #{ipc_endpoint}."
client = Ethereum::IpcClient.new(ipc_endpoint)

new_account = client.personal_new_account("12345")
account_id = new_account["result"]
STDERR.puts "Created new account #{account_id}."

STDOUT.puts client.personal_list_accounts

