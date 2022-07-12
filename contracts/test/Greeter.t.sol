pragma solidity ^0.8.4;

import {Vm} from "./utils/Vm.sol";
import {DSTest} from "./utils/DSTest.sol";
import {Greeter} from "../Greeter.sol";

contract GreeterTest is DSTest {
    // For a full list of vm.xxx() cheatcodes, and other
    // documentations about Forge, see :
    // https://book.getfoundry.sh/cheatcodes/
    Vm public constant vm = Vm(HEVM_ADDRESS);

    // The contract we are testing
    Greeter public greeter;

    // setUp() is executed before all test cases.
    // each public function whose name starts with
    // `test` is a test case.
    function setUp() public {
        // create a new contract for each test flow
        greeter = new Greeter("Bonjour");

        // label contracts for debugging
        vm.label(address(greeter), "greeter");
        vm.label(address(this), "test");
    }

    // greet() should return the expected greeting
    function testGreet() public {
        assertEq(greeter.greet(), "Bonjour");
    }

    // setGreeting() should update state
    function testSetGreeting() public {
        assertEq(greeter.greet(), "Bonjour");
        greeter.setGreeting("Hello");
        assertEq(greeter.greet(), "Hello");
    }

    // should not accept ETH transfers because
    // the contract has no receive() function.
    function testDoNotAcceptEth() public {
        vm.expectRevert(bytes(""));
        payable(address(greeter)).transfer(1 ether);
    }
}
