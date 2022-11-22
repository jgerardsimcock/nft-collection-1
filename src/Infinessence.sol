// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import "lib/openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "lib/openzeppelin-contracts/contracts/security/Pausable.sol";
import "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "lib/openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "lib/openzeppelin-contracts/contracts/utils/Counters.sol";
// import "lib/openzeppelin-contracts/contracts/utils/Strings.sol";

contract Infinessence is ERC721URIStorage, Pausable, Ownable, ERC721Burnable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("Infinessence", "INF") {}

    string uri;

    function setURI(string memory _uri) public onlyOwner {
        uri = _uri;
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }


    function safeMint(address to, string memory _uri) 
        
        public onlyOwner 
        returns (uint256) 

    {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        setURI(_uri);
        tokenURI(tokenId);
        // _setTokenURI(tokenId, uri);
        return tokenId;

    }


    function _baseURI() internal view override returns (string memory) {
        return uri;
    }

    function tokenURI(uint tokenId)
        public 
        view
        override(ERC721URIStorage, ERC721)
        returns (string memory)
        {
            return string(abi.encodePacked(_baseURI()));
        }


    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    // The following functions are overrides required by Solidity.

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }


    // function transferTo(){}
}
