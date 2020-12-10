pragma solidity 0.7.5;
pragma abicoder v2;

contract Wallet {
    address[] public owners;
    uint limit;
    
    struct Transfer{
        uint amount;
        address payable receiver;
        uint approvals;
        bool hasBeenSent;
        uint id;
    }
    
    Transfer[] transferRequests;
    
    mapping(address => mapping(uint => bool)) approvals;
    
    //Should only allow people in the owners list to continue the execution.
    modifier onlyOwners(){
    }
    //Should initialize the owners list and the limit 
    constructor(address[] memory _owners, uint _limit) {
    }
    
    //Empty function
    function deposit() public payable {}
    
    //Create an instance of the Transfer struct and add it to the transferRequests array
    function createTransfer(uint _amount, address payable _receiver) public onlyOwners {
        
    }
    
    //Set your approval for one of the transfer requests.
    //Need to update the Transfer object.
    //Need to update the mapping to record the approval for the msg.sender.
    //When the amount of approvals for a transfer has reached the limit, this function should send the transfer to the recipient.
    //An owner should not be able to vote twice.
    //An owner should not be able to vote on a tranfer request that has already been sent.
    function approve(uint _id) public onlyOwners {
    }
    
    //Should return all transfer requests
    function getTransferRequests() public view returns (Transfer[] memory){
    }
    
    
}
