Ruby Hack Night Blockchain 102
=========================

Slides and assets for the Blockchain workshop [first presented at Toronto Ruby Hack Night, September 19, 2016]  
Workshop for learning Blockchains and Smart Contracts
Created by David Andrews

![Blockchains](https://github.com/k00ka/smart-contracts/blob/master/media/screenshot.jpg)

Slides for the workshop are here:  
https://gnab.github.io/remark/remarkise?url=https://raw.githubusercontent.com/k00ka/smart-contracts/master/SLIDES.md

###Introduction

This project is a simple Ruby project.

We have provided a repository which mimics the setup we often use, so it should be familiar. The code to be created is found in the ``lib/`` directory.

###Setup

Here are the steps to get you started with the repo.

1. For this workshop, you will need a laptop with the following:
  - [x] Ruby 2.x  
  - [x] A github account  
  Note: We have included a ``.ruby-version`` file locked to 2.2.3, which you can change to any Ruby 2.x version if you don't have 2.2.3 installed  
  More detailed instructions for each platform are included in the footer. Refer there if you are having issues.

1. Fork the repo (optional and recommended):
  From the page https://github.com/k00ka/smart-contracts, click the Fork button in the top-right corner. Copy the new repo address (in a box just below the thick red line) into your clipboard. Detailed instructions on forking a repo can be found here: https://help.github.com/articles/fork-a-repo/

1. At Ryatta Group we use rbenv, and so we've included some optional elements - just skip them if you're using rvm or are not versioning your Ruby. If you forked the repo above, your repo_address will be in your clipboard. If not, you should use my repo_address ``git@github.com:k00ka/smart-contracts.git``

  ```sh
  % git clone <repo_address>
  % cd smart-contracts
  % gem install bundler
  Fetching: bundler-1.7.4.gem (100%)
  Successfully installed bundler-1.7.4
  1 gem installed
  % bundle
  Fetching gem metadata from https://rubygems.org/.........
  Resolving dependencies...
  Installing rake 10.3.2
  ...
  Using bundler 1.7.4
  Your bundle is complete!
  Use `bundle show [gemname]` to see where a bundled gem is installed.
  ```
  Note: if you use rbenv...
  ```sh
  % rbenv rehash
  ```
  You are (almost) there!

1. Install ``geth``
Instructions for installing geth can be found here:
https://github.com/ethereum/go-ethereum
On OSX:
```
% brew tap ethereum/ethereum
% brew install ethereum
```

1. Start an instance of geth in development mode, with miners:
```
% geth --dev --mine --minerthreads 1
```
The above command is also here:
```
% bin/start_geth.sh
```

1. Once the above is started, copy endpoint URL out of the log and set environment:
```
% GETH_ENDPOINT="/var/folders/tz/5kjsfbw11clgdl4d0ydk6cv40000gn/T/ethereum_dev_mode/geth.ipc”
% export GETH_ENDPOINT
```

For instance, run the following test to create an account:
```
% ruby lib/basic.rb
```
The geth admin API is documented here:


1. Install the Solidity compiler
Solc installation instructions can be found here:
https://github.com/ethereum/go-ethereum/wiki/Contract-Tutorial
On OSX, if you’ve followed the instructions above:
```
% brew install solidity
% brew linkapps solidity
```

1. **wait**

```
% which solc
/usr/local/bin/solc
```

1. Register Solidity in geth
```
geth --dev console
> eth.getCompilers()
[]
> admin.setSolc("/usr/local/bin/solc")
> eth.getCompilers()
['Solidity']
```
