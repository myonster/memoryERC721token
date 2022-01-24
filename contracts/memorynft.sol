// SPDX-License-Identifier: MIT

pragma solidity 0.8.11;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


// contract Memory is ERC721 {
//     using Counters for Counters.Counter;
//     Counters.Counter private _tokenIds;

//     constructor() public ERC721("MemoryToken", "MEMORY") {}

//     function awardItem(address player, string memory tokenURI)
//         public
//         returns (uint256)
//     {
//         _tokenIds.increment();

//         uint256 newItemId = _tokenIds.current();
//         _mint(player, newItemId);
//         _setTokenURI(newItemId, tokenURI);

//         return newItemId;
//     }
// }


// contract Memory is ERC721, ERC721URIStorage, Ownable {
//     constructor() ERC721("MyMemory", "MEMORY") {}

//     function safeMint(address to, uint256 tokenId, string memory uri)
//         public
//         onlyOwner
//     {
//         _safeMint(to, tokenId);
//         _setTokenURI(tokenId, uri);
//     }

//     function awardItem(address recipient, string memory metadata)
//     public
//     returns (uint256)
//     {
//         _tokenIds.increment();
//         uint256 newtokenIds = _tokenIds.current();
//         _mint(recipient, newtokenIds);
//         _setTokenURI(newtokenIds, metadata);
//         return newtokenIds;
//      }
//     // The following functions are overrides required by Solidity.

//     function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
//         super._burn(tokenId);
//     }

//     function tokenURI(uint256 tokenId)
//         public
//         view
//         override(ERC721, ERC721URIStorage)
//         returns (string memory)
//     {
//         return super.tokenURI(tokenId);
//     }
// }


contract Memory is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Memory", "MEMORY") {}

    function awardItem(address recipient, string memory metadata)
    public
    returns (uint256)
    {
        _tokenIds.increment();
        uint256 newtokenIds = _tokenIds.current();
        _mint(recipient, newtokenIds);
        _setTokenURI(newtokenIds, metadata);
        return newtokenIds;
     }


}
