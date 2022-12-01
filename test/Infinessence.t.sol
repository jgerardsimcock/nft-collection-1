// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Infinessence.sol";

contract Infinitest is Test {
    
    
    Infinessence public infinessence;

    function setUp() public {
        infinessence = new Infinessence();
    }

    function testNameisInfinessence() public {
        assertEq(infinessence.name(), "Infinessence");
    }


    function testMintingNFT() public {
        infinessence.safeMint(msg.sender, "https://r5sr6zbjdnqvvrin4z56zqzuwlo7coc7m2dvr6tpzuhx76rzgkra.arweave.net/j2UfZCkbYVrFDeZ77MM0st3xOF9mh1j6b80Pf_o5MqI");
        assertEq(infinessence.ownerOf(0), msg.sender);
        assertEq(infinessence.tokenURI(0), "https://r5sr6zbjdnqvvrin4z56zqzuwlo7coc7m2dvr6tpzuhx76rzgkra.arweave.net/j2UfZCkbYVrFDeZ77MM0st3xOF9mh1j6b80Pf_o5MqI");
    }


    function testChangingURI() public {

        infinessence.safeMint(msg.sender, "https://someurl.com");
        assertEq(infinessence.tokenURI(0), "https://someurl.com");
        //change the url
        infinessence.safeMint(msg.sender, "https://anotherurl.com");
        assertEq(infinessence.tokenURI(1), "https://anotherurl.com");

    //function testBurnNFT(tokenId) public {
      //  infinessence._burn(tokenId)
    }

    }


    // function testIdMatchesURI() public{
        
    // }

