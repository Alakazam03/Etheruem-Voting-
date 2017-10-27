pragma solidity ^0.4.0;

contract HelloWorld{

    address public owner;
    mapping (address => uint) balances;
    event Transfer(address indexed _to, address indexed _from, uint256 _value);


    //constructor
    //runs upon contract creation
    function HelloWorld(){
      owner = msg.sender;
      balances[owner] = 1000;
    }
   
   
    function getId() returns(address){
        return msg.sender;
    }
    
    
    function getBalance(address _user) constant returns (uint _balance){
       return balances[_user];
    }
    
     function transfer(address _to,address _ownerkey,uint _value) returns (string){
        if(balances[msg.sender] < _value){
            return "Insufficient balance";
        }
        if(msg.sender==_ownerkey){
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        Transfer(_to,msg.sender,_value);
        return "Pills transfered";
        }
        else{
            return "Access denied";
        }
    }

   




}
