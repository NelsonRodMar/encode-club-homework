**1) Imagine you been given the following code to audit. with the following note "DogCoinGame is a game where players are added to the contract via the addPlayer function, they need to send 1 ETH to play.Once 200 players have entered, the Ul will be notified by the startPayout event, and will pick 100 winners which will be added to the winners array, the Ul will then call the payout function to pay each of the winners.The remaining balance will be kept as profit for the developers."Write out the main points that you would include in an audit report.**

The code to audit : 
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DogCoinGame is ERC20 {
    uint256 public currentPrize;
    uint256 public numberPlayers;
    address payable[] public players;
    address payable[] public winners;

    event startPayout();

    constructor() ERC20("DogCoin", "DOG") {}

    function addPlayer(address payable _player) public payable {
        if (msg.value == 1) {
            players.push(_player);
        }
        numberPlayers++;
        if (numberPlayers > 200) {
            emit startPayout();
        }
    }

    function addWinner(address payable _winner) public {
        winners.push(_winner);
    }

    function payout() public {
        if (address(this).balance == 100) {
            uint256 amountToPay = winners.length / 100;
            payWinners(amountToPay);
        }
    }

    function payWinners(uint256 _amount) public {
        for (uint256 i = 0; i <= winners.length; i++) {
            winners[i].send(_amount);
        }
    }
}
```

Here the thing that I would check :

- [ ] That the player are well added to the contract
- [ ] That the function is payable
- [ ] That we need to pay the right amount to enter is checked
- [ ] That we count the number of player added to the game
- [ ] There in general like reentrancy attack, payement not possible because of `payable` forget, no way to drain the fund (by admin or player)...
- [ ] That an event is emit when a player is added (better for UI) and that when we got the 200 players the event `startPayout` is emit
- [ ] That there is a function to pick 100 winners and that this winners is limited to 100
- [ ] That a function is implemented to pay the winners, and the payment is done in a perfect way (check fail payement, addres is payable...) 
- [ ] That we pay the winners with the right amount and that the dev keep the benefit





