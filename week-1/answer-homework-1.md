**1) Why is client diversity important for Ethereum ?**

Because it prevents the network of bug, make the network more resilient. And the thing that having multiple clients put the responsibility of maintaining a healthy	network on different people, it share the responsibility.

More info or src :
- https://ethereum.org/en/developers/docs/nodes-and-clients/#client-diversity




**2) Where is the full Ethereum state held ?**

In Ethereum there are three types of node, the full node, archival node and the light node. And only full and archive node get the full state of Ethereum. This type of node got all the data since the genesis block (except for full that could start a little bit later) and never delete the data, the trouble is that this require a lot of storage that why a lot of  node is only light node to be easier.

More info or src :
- https://ethereum.org/en/developers/docs/nodes-and-clients/#node-types




**3) What is a replay attack ? Which 2 pieces of information can prevent it ?**

A replay attack happen when a hard fork of the chain happen like after the Ethereum merge. What could be done is copying a transaction send by an account and do the same one the forked chain.
With Ethereum, to avoid replay attack a transaction use nonce, chain id or timestamp to protect.

But replay attack could also happen on a contract level with the transferProxy() function. How ? When a transaction happens in one contract, this transaction will be also legal in another contract so we could steal fund or other.

More info or src :
- https://www.exodus.com/support/article/168-what-is-a-replay-attack

- https://media.defcon.org/DEF%20CON%2026/DEF%20CON%2026%20presentations/DEFCON-26-Bai-Zheng-Chai-Wang-You-May-Have-Paid-more-than-You-Imagine.pdf

- https://medium.com/cypher-core/replay-attack-vulnerability-in-ethereum-smart-contracts-introduced-by-transferproxy-124bf3694e25




**4) In a contract, how do we know	who called a view function ?**

We can use `msg.sender`, but it is useless since most of the time a view function is not call threw a transaction and don't have a real adresse who call the function, see source for more details info.

More info or src :
- https://stackoverflow.com/questions/51847788/msg-sender-does-not-work-inside-a-view-function-why-is-there-a-workaround

