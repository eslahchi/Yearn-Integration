// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.10;

import "forge-std/Script.sol";
import "../src/YearnYield.sol";

contract YearnYieldScript is Script {
    function run() public {
        // Define the constructor arguments
        address stakingToken = address(1); // Replace with the actual staking token address
        address yieldVault = address(2); // Replace with the actual yield vault address

        // Deploy the YearnYield contract
        YearnYield challenge = new YearnYield(
            stakingToken,
            yieldVault,
        );

        // Broadcast the deployment transaction
        vm.broadcast(address(challenge));

        // Log the deployed contract address
        console.log("YearnYield deployed at", address(challenge));
    }
}
