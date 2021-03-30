pragma solidity^0.8.3;

contract ToDoApp {

    uint listIndex;
    uint taskIndex;

    struct Task {
        uint id;
        string name ;
        bool completed ;
    }

    struct List {
        uint id;
        string name;
    }

    mapping (address => List[]) lists; // maps user address to array of lists
    mapping (uint => Task[]) tasks; // maps listID to array of tasks

    function createList(string calldata _name) public {
        List memory list = List({
            id: listIndex++,
            name: _name
        });

        lists[msg.sender].push(list);
    }

    function getLists() public view returns (List[] memory) {
        return lists[msg.sender];
    }

    function createTask(string calldata _name, uint listID) public {
        Task memory _task = Task({
            id: taskIndex++,
            name: _name,
            completed: false
        });

        tasks[listID].push(_task);
    }
    
    function getTasks(uint listID) public view returns(Task[] memory){
        return tasks[listID];
    }

    function completeTask(uint taskID, uint listID) public {
        tasks[taskID][listID].completed = true;
    }
}
