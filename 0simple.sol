DumbCoin.sol

contract DumbCoin {

    // save some variables here;
    address deployer;
    mapping(address=>uint) balances;

    // constructor has the same name withe the contract name
    function DumbCoin() {
        // msg.sender = who deployed the contract
        deployer = msg.sender;
    }

    function giveCoins(uint amount, address receiver) {
        // msg.sender = who called the function
        if (msg.sender == deployer) {
            // give coins to receiver
            balances[receiver] += amount;
        } else {
            throw;
        }
    }

    function viewBalance() returns (uint) {
        // who calls the function = msg.sender
        return balances[msg.sender];
    }
}
