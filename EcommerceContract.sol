// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
contract EcommerceContract is ERC721
{
    mapping(address => uint256[]) private _tokensByOwner;

    constructor() ERC721("Ecommerce NFT", "ECNFT") {}

    function mintNFT(address _recipient, uint256 _tokenId) public
    {
        _mint(_recipient, _tokenId);
        _tokensByOwner[_recipient].push(_tokenId);
    }

    function getTokenIdsByOwner(address _owner) public view returns (uint256[] memory)
    {
        return _tokensByOwner[_owner];
    }
}
