// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import "../src/Goemon.sol";

contract DeployMyContract is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        address permit2Address = 0x000000000022D473030F116dDEE9F6B43aC78BA3;

        Goemon token = new Goemon(permit2Address);
        console.log("Goemon deployed at:", address(token));

        vm.stopBroadcast();
    }
}
