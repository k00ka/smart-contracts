title: Bitcoins and the Blockchain 
name: inverse
layout: true
class: middle inverse
<style type="text/css">
 this { color: white; }
</style>

---
class: center middle

#Bitcoins and the Blockchain
##Part 1: The Story of Bitcoins
David Andrews, Ryatta Group

---
class: center middle

#Halloween 2008

![Bitcoin white paper](https://github.com/k00ka/bitcoin/raw/master/media/bitcoin-white-paper.png)

---

# Bitcoin - motivation
  * elimination of intermediaries from Internet commerce
    * who are they?
      * trusted third-parties who vouch for either side - financial institutions
        * banks/credit card companies
        * Paypal
        * the Mint
    * why eliminate them?
      * intermediating third-parties cannot avoid disputes
      * the dispute mechanism increases transaction costs

---

![Intermediaries](https://github.com/k00ka/bitcoin/raw/master/media/disintermediate.jpg)

---

# Bitcoin - outcomes
* small casual transactions not reasonable (fees too high)

* reversible payments for non-reversible services -> need for further “trust”
  * merchant wants to know more about customer than would with cash transaction

* a certain amount of fraud is accepted

---

# Bitcoin - goal
* remote cash
  * transactions are not reversible
  * a certain amount of (complete?) anonymity is possible
  * fraud is limited

* replace trust with cryptographic proof

---

#Two sides to any transaction
Seller: wants to ensure payment
* Bitcoins offer to solve this

Buyer: wants to ensure delivery of goods/services
* the white paper suggests using “escrow mechanisms” (we will examine this more in depth later)

---

Let’s focus first on:
1. the seller's needs
1. building blocks from the ground up

---

# Seller wants to ensure payments that are
* non-reversible - disputes can only be resolved directly
  * only way to "reverse" payment is to pay it back
  * seller enforces own policy
  * non-reversible services demand certain payment

* verifiable
  * coin is real, not forgery
  * cannot spend same coin twice - “double spending” problem

* consider: cash, credit cards, gift cards, cheques

---

# Keypairs 101
* public and private key - "asymmetric"
  * public key is shared
  * private key is kept private

* you can do two things with your private key
  * sign something (from you to the sender)
  * decrypt something (from a sender to you)

* with someone else's public key you can
  * verify a signature (sent to you)
  * encrypt something (for a particular recipient)

---

# Encryption
![encryption](https://github.com/k00ka/bitcoin/raw/master/media/keypair-encryption.jpg)

---

# Signing
![signing](https://github.com/k00ka/bitcoin/raw/master/media/keypair-signing.png)

---

#Transactions

* Bitcoins are composed of digital signatures. The signature supports three features of the Bitcoin:
  * that the data was created by a specific sender, or Authenticity
  * that the data was sent by a specific sender in such a way that the sender cannot deny it, or Non-repudiability
  * that the data was not altered in transit, or Integrity

> Q: Which of the above are features of keypairs?

---

#Transactions

![bitcoin-transaction](https://github.com/k00ka/bitcoin/raw/master/media/bitcoin-transaction.png)

---

#Transactions

* when you pay with Bitcoin, you sign the Bitcoin with your (Bitcoin wallet's) signature.  
* each Bitcoin carries within it a little ledger listing its transaction history.

* from this ledger, we can be sure that the Bitcoins are "real"

--- 

#Double-spending problem

* we can determine from the chain of signatures that Bitcoins are "real"
* we cannot determine if they have already been spent elsewhere

* one way to confirm this is for anyone (or everyone) to be aware of all transactions
* with proof of the time of a transaction, we can rule that the first payee was given the coin and all later transfers were invalid

---

#Time-stamps

* a certain server or servers could collect transactions occuring before a certain time
* all new transactions would be grouped, hashed and chained to create a widely accessible document
* however this task must be done peer-to-peer, such that there are a large number of sources

---

#Mining

* how to distribute the collection, grouping, hashing and chaining of transactions?

* Proof-of-work is a scheme in which the server that solves a specially selected problem first wins a prize

* benefits:
  1. miners have incentive to mine (the prize)
  1. the difficulty of the PoW can be increased or decreased based on the number and power of miners
  1. since miners are competing, no one miner has control

---

#Proof-of-work algorithm

The proof-of-work looks like this:

1. A block starts out with a header and a single transaction to pay the miner reward.  This transaction has a special name (called the “coinbase”).
1. Transactions are added to the block.
1. A block “header” of fixed length is formed by doing cryptographic hashes of the transactions (called the Merkle root).
1. Mining uses SHA256 cryptography which breaks the data up into 64 byte chunks and operates on each chunk so there are 2 chunks and 2 steps to the SHA256 algorithm in this case.
1. The first sha256 step is performed on the first chunk of the header and that does not change.  This is called the “midstate” because it is partway through the SHA256 process which is 2 steps in this case.
1. The second step of SHA256 is done on the second chunk of the header.  This includes the nonce field.
1. The entire solution is run through a second round of SHA256 and the solution compared to the difficulty (that is part of the block header).  The nonce is returned if it meets the difficulty.
1. The nonce is incremented and the last 2 steps (6 and 7) are done again 2^32 (4 billion) times to exhaust all possible nonce values.
1. If no solution is found another nonce contained within the coinbase transaction is incremented.  This changes the hash of the coinbase transaction and the merkle root
1. The process goes back to step 5 and continues until a solution is found.

---

#Proof-of-work algorithm
![bitcoin mining](https://github.com/k00ka/bitcoin/raw/master/media/bitcoin-mining.png)

---

#Wallet

* A bitcoin wallet is software designed to hold Bitcoins and make Bitcoin transactions possible.
* It is possible to determine at any point in time the amount in a specific wallet.

---

Wallet = bank account
blockchain = shared document (some say database) = ledger of all transactions
transactions are in blocks
blocks are chained

As Bitcoin transactions take place, they are broadcast to the network — a network made up of every computer on the internet running Bitcoin software — whose job is to maintain the blockchain, the digital ledger containing the record of all confirmed Bitcoin transactions, ever. The blockchain is kept in chronological order and certified as not-messed-with through cryptography. In fact, there are a few clever tricks built in so that altering a ledger entry in the blockchain invalidates all subsequent entries.

---
What is a blockchain?
A shared document

A dynamic shared document

A dynamic shared document 

Distributed ledger
https://cdn-images-1.medium.com/max/800/1*nnpzTe1hx74WKICL3Gj34A.jpeg
Credit cards
Barter
Stock exchange
Western Union
Interac
ABM withdrawal
Cheque
Cash
Bitcoin


---

Uses of blockchain?
Currency
- at rest (store of value)
e.g. David has 200 Bitcoin in his wallet
- in motion (payments, intermediary)
e.g. David paid 100 Bitcoin to Jason
e.g. David paid 200 CAD to Jason
Digital assets
- items of value
e.g. David has 200 shares of Basecamp
e.g. David has 40,000 Air Miles
Identity
- publicly verifiable ID
- reputation
Verifiable data
- immutable record
Smart contracts
- 



---

What do blockchains give you out of the box?

Arguably the single most important benefit of distributed ledgers is that you can 

* create agreement about facts and processes across entities without a single entity being able to unilaterally make changes

Timestamped events are agreed upon across multiple, possibly hostile or non-trusting entities.

Catastrophic data loss becomes a non-issue due to the constant replication between all participants.

You are able to prove that data hasn’t been unilaterally tampered. It takes some significant coordination to alter data that has already been written and replicated on a blockchain.

If digital signatures are used to initiate transactions, and if the keys are carefully managed:

Ability to prove authenticity (who initiated this transaction?)
Nonrepudiation (hard for participants to deny responsibility)

For digital tokens (which either represent physical items or are themselves the dematerialised asset), if bitcoin’s “UXTO” transaction paradigm is used, you get:

Full traceability of ownership history
Sound business logic validation that only lets you spend what you have received
A guaranteed group-agreed resolution if the same token is transferred to two different people simultaneously
Atomic transactions – payments with multiple legs either succeed collectively or fail collectively.  There is no risk of a single leg failing (known as “Herstatt risk“). This includes single payments to multiple recipients, or asset swaps (for example I give you 5 of these for 3 of those).



Transactions



---

#Choose a Wallet
1. Desktop
1. Mobile
1. Web

---
class:middle

Choose a wallet: https://bitcoin.org/en/choose-your-wallet  
Bitcoin Core is a good one: https://bitcoin.org/en/download  
Bitcoin Core on OSX: https://bitcoin.org/bin/bitcoin-core-0.12.1/bitcoin-0.12.1-osx.dmg  

Don't forget to verify the software as follows (remember you're storing cash in this wallet!):
1. Download the package checksums:
https://bitcoin.org/bin/bitcoin-core-0.12.1/SHA256SUMS.asc  

1. Verify the download by running ``shasum -a 256 bitcoin-0.12.1-osx.dmg``  

1. Compare what you got to what's in the checksum file. If they don't match, don't install it!

---
#Creating your wallet
To get started with Bitcoin Core, you need to sync the blockchain. Syncing takes a long time and consumes up to 80GB of storage, but you can "prune" the blockchain to the last two weeks by running the client with ``--prune=550``

The Bitcoin Core (bitcoin-qt) client has a built-in P2P client to bring your copy of the blockchain up-to-date. The initial run takes several hours (even with prune set) to download the blockchain.


---

---
#Resources

* https://bitcoin.org/bitcoin.pdf
* en.bitcoin.it
* bitcoin.org
* https://en.wikipedia.org/wiki/Public-key_cryptography

