//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
// import "./project.sol";
contract createProject{
    project[] public projects;
    event projectCreated(address owner, address projectAddress);
    
    mapping(uint => address) projectAddress;
    function CreateProject(uint _projectCode) public returns(address){
        project myproject = new project(msg.sender);
        projects.push(myproject);
        emit projectCreated(msg.sender,address(myproject));
        projectAddress[_projectCode] = address(this);
        return address(this);
    }
    function contribute(uint _projectCD) public payable{
        address payable prjctAdrs = payable(projectAddress[_projectCD]);
        prjctAdrs.transfer(msg.value);
    }

}

contract project{
    receive() payable external{
    }
    // uint projectCode;
    string projectName;
    address payable public owner;
    // address  public contractAddress;
    constructor(address _owner){
        owner = payable(_owner);
    }

    
    
}

