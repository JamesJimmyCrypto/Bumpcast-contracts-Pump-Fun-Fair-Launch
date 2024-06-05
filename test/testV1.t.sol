// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {Bag, Token} from "../src/v1/Bag.sol";

contract uniV3GasTest is Test {
    Token public bot_gas;
    Bag public bag;
    address owner = address(0xDEADbEAF88888888888888888888888888c0FFEE);

    function setUp() public {
        vm.createSelectFork("base");
        deal(address(this), 100e18);
        emit log_named_address("this", address(this));
        emit log_named_address("msg.sender", msg.sender);
        bag = new Bag();

        emit log_string("deploy ..");
        bot_gas =
            Token(payable(bag.createBumpAndBuy{value: 1e18}("name", "symbol", "intro", "icon", "twi", "tel", "web")));

        emit log_named_decimal_uint("balance", bot_gas.balanceOf(address(this)), 18);
        emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);
    }

    function testBuy() public {
        {
            uint256 prev_balance = address(bot_gas).balance;
            emit log_string("buy for 1e4 token ...");
            uint256 ethResult = bot_gas.calPresaleSwapETHForExactToken(1e4 * 1e18);
            emit log_named_decimal_uint("ethResult", ethResult, 18);

            bot_gas.presaleSwapETHForToken{value: ethResult}(address(this));

            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance - prev_balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
        }

        {
            uint256 prev_balance = address(bot_gas).balance;
            emit log_string("sell for 0.01 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapTokenForExactETH(1e16);
            emit log_named_decimal_uint("tokenResult", tokenResult, 18);

            bot_gas.presaleSwapTokenForETH(address(this), tokenResult);

            emit log_named_decimal_uint("token contract balance", prev_balance - address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
        }

        // -------------------------------

        {
            emit log_string("buy with 1 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapETHForToken(1e18);
            bot_gas.presaleSwapETHForToken{value: 1e18}(address(this));

            emit log_named_decimal_uint("tokenResult", tokenResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
        }

        {
            emit log_string("buy with 0.1 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapETHForToken(1e17);
            bot_gas.presaleSwapETHForToken{value: 1e17}(address(this));

            emit log_named_decimal_uint("tokenResult", tokenResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
            emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);
        }

        {
            emit log_string("buy with 0.1 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapETHForToken(1e17);
            bot_gas.presaleSwapETHForToken{value: 1e17}(address(this));

            emit log_named_decimal_uint("tokenResult", tokenResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
            emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);
        }

        {
            emit log_string("buy with 0.1 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapETHForToken(1e17);
            bot_gas.presaleSwapETHForToken{value: 1e17}(address(this));

            emit log_named_decimal_uint("tokenResult", tokenResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
            emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);
        }

        {
            emit log_string("buy with 0.1 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapETHForToken(1e17);
            bot_gas.presaleSwapETHForToken{value: 1e17}(address(this));

            emit log_named_decimal_uint("tokenResult", tokenResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
            emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);
        }

        {
            emit log_string("buy with 0.1 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapETHForToken(1e17);
            bot_gas.presaleSwapETHForToken{value: 1e17}(address(this));

            emit log_named_decimal_uint("tokenResult", tokenResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
            emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);
        }

        {
            emit log_string("buy with 0.1 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapETHForToken(1e17);
            bot_gas.presaleSwapETHForToken{value: 1e17}(address(this));

            emit log_named_decimal_uint("tokenResult", tokenResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
            emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);
        }

        {
            emit log_string("buy with 0.1 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapETHForToken(1e17);
            bot_gas.presaleSwapETHForToken{value: 1e17}(address(this));

            emit log_named_decimal_uint("tokenResult", tokenResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
            emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);
        }

        {
            emit log_string("buy with 2.6 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapETHForToken(26e17);
            bot_gas.presaleSwapETHForToken{value: 26e17}(address(this));

            emit log_named_decimal_uint("tokenResult", tokenResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
            emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);
        }

        {
            emit log_string("sell ...");
            uint256 ethResult = bot_gas.calPresaleSwapTokenForETH(bot_gas.balanceOf(address(this)));
            bot_gas.presaleSwapTokenForETH(address(this), bot_gas.balanceOf(address(this)));

            emit log_named_decimal_uint("ethResult", ethResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
            emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);

            emit log_string("buy with 5.4 eth ...");
            uint256 tokenResult = bot_gas.calPresaleSwapETHForToken(54e17);
            bot_gas.presaleSwapETHForToken{value: 54e17}(address(this));

            emit log_named_decimal_uint("tokenResult", tokenResult, 18);
            emit log_named_decimal_uint("token contract balance", address(bot_gas).balance, 18);
            emit log_named_decimal_uint("get token", bot_gas.balanceOf(address(this)), 18);
            emit log_named_decimal_uint("mCap", bot_gas.mCap(), 18);
        }
    }

    receive() external payable {}
}
