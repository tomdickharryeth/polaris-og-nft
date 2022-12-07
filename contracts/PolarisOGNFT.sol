pragma solidity ^0.8.15;


contract NFT is ERC721A {
    constructor() ERC721A("Polaris OG NFT", "TPRTL") {}

    function mint(uint256 quantity) external payable {
        // `_mint`'s second argument now takes in a `quantity`, not a `tokenId`.
        _mint(msg.sender, quantity);
    }

    function _baseURI() override internal view virtual returns (string memory) {
        return "ipfs://Qmd5BtjRkbv6zMvdJ9NUxi8dG562HJTpbM9gr5ato3bejb/";
    }
}