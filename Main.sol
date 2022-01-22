pragma solidity 0.8.10;


contract MyContract {
    uint public x = 21;

    function setX(uint _x) public {
        x = _x;
    }
    
    uint8 
    uint16 
    uint256
    bool test = false;

    mapping(uint =>int) public map;
    map[1] = -2;

    function setKey(uint key, int value) public {
        map[key] = value;
    }

    address public lastSender;

    function receive() external payable {
        msg.value;
        msg.gas;
        //lastSender = msg.sender
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function pay(address payable addr) public payable {
    (bool sent, bytes memory data) = addr.call{value: 1 ether}("");
    require(sent, "Error sending eth");
    }

    

}




contract MyBankContract {
    mapping(address => uint) private balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(address payable addr, uint amount) public payable{
        require(balances[addr] >= amount);
        (bool sent, bytes memory data) = addr.call{value : amount}("");
        require(sent,"couldnt withdraw");
        balances[msg.sender] -= amount;
    }

    function getBalance() public view return  (uint) {
            return address(this).balance;
        }
    
    }


