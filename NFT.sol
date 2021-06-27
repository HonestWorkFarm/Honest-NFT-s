
pragma solidity >=0.4.22 <=0.8.0;
import "./openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./openzeppelin/contracts/utils/Counters.sol";
import "./openzeppelin/contracts/utils/Strings.sol";
import "./openzeppelin/contracts/access/Ownable.sol";

contract NFT is Ownable,ERC721{

uint public totalTokensMinted;
using Counters for Counters.Counter;
Counters.Counter private _tokenIds;
 mapping(uint => string) public URI;
    


constructor () public ERC721("Honest Work NFT's", "HW") {
   
}

    function mint(address to, string memory _URI) public {
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();
        _mint(to, newTokenId);
        _setTokenURI(newTokenId, _URI);
        URI[newTokenId] = _URI;
        
    }

   



}





