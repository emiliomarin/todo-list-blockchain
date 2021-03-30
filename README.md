# ToDo List - Blockchain
## Overview
The aim of this project is to create a ToDo List application based on the blockchain technology through smart contracts written in Solidity and deploy it to the Ethereum test network using Truffle.

The idea itself might not make much sense as a real application in the Ethereum Network, but this is just a sample project to go over the basics of Solidity again.

Once the project is finished, the user should be able to interact with the applicattion directly with the smart contract and should be able to:

- Create and Delete lists
- Create and Mark as Completed tasks
- Get the user's lists
- Get the tasks inside a list

## Usage

Run Ganache to create local network on port `:7545`

Run truffle migrations `truffle migrate`

Interact with smart contracts through the `truffle console`:

- Create app instance `app = await ToDoApp.deployed()`
- Create List: `app.createList(<listName>)` => `app.createList("Groceries")`
- Get Lists: `app.getLists()`
- Create Task: `app.createTask(<taskName>, <listID>)` => `app.createTask("Milk", 0)`
- Get Tasks: `app.getTasks(<listID>)` => `app.getTasks(0)`
- Complete Task: `app.completeTask(<taskID>, <listID>)` => `app.completeTask(0, 0)`
