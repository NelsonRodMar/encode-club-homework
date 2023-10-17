**1) What are the advantages and disadvantages of the 256 bit word length in the EVM ?**

The advantages of 256 word is convenient for Ethereum's core cryptographic operations such as Keccak-256 hashing and elliptic curve computations. Also the 256 word, 32 bytes is ideal because it is just large enough to store 32 byte values common in many crypto implementations, as well as addresses (and provides the ability to pack address and value into a single storage index as an optimization), but not so large as to be extremely inefficient.

The disavantages is that this size is not natively supported by the processor running the EVM so it not efficient.

More info or src :
- https://ethereum.stackexchange.com/questions/2327/clarification-of-256-bit-word-semantics

- https://ethereum.stackexchange.com/questions/141863/why-are-storage-slot-values-in-the-evm-limited-to-256-bits
- https://ethereum.org/en/developers/tutorials/yellow-paper-evm/#91-basics 
- https://earlz.medium.com/the-faults-and-shortcomings-of-the-evm-bde4d09b8b6a


**2) What would happen if the implementation of a precompiled contract varied between Ethereum clients ?**

This would cause trouble, because we need the same execution, same result everywhere on Ethereum, even if the client is different. 



