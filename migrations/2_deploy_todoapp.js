const todoApp = artifacts.require("./ToDoApp");


module.exports = function(deployer) {
    deployer.deploy(todoApp);
}