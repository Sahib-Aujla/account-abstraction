//SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {DeployMinimal} from "../../script/DeployMinimal.s.sol";
import {HelperConfig} from "../../script/HelperConfig.s.sol";
import {MinimalAccount} from "../../src/ethereum/MinimalAccount.sol";

contract MinimalAccountTest is Test {
    MinimalAccount minimalAccount;
    DeployMinimal deployMinimal;
    HelperConfig helperConfig;

    function setUp() external {
        deployMinimal = new DeployMinimal();

        (helperConfig, minimalAccount) = deployMinimal.deployMinimalAccount();
    }
}
