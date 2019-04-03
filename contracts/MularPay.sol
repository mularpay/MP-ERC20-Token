pragma solidity 0.5.6;

import "./ERC20.sol";

/**
 * @title MularPay ERC20 token smart contract
 */
contract MularPay is ERC20 {
    string private constant _name = "MularPay";
    string private constant _symbol = "MP";
    uint8 private constant _decimals = 18;

    /**
     * @dev MularPay constructor method
     */
    constructor (address receiver) public {
        //sending 1 bln tokens to the main wallet
        //the number of tokens is fixed and cannot be minted in future
        _mint(receiver, 1000000000 * 1 ether);
    }

    /**
     * @return the name of the token.
     */
    function name() public pure returns (string memory) {
        return _name;
    }

    /**
     * @return the symbol of the token.
     */
    function symbol() public pure returns (string memory) {
        return _symbol;
    }

    /**
     * @return the number of decimals of the token.
     */
    function decimals() public pure returns (uint8) {
        return _decimals;
    }
}