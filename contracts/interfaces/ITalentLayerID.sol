// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface ITalentLayerID {
    function numberMinted(address _user) external view returns (uint256);

    function isTokenPohRegistered(uint256 _tokenId)
        external
        view
        returns (bool);

    function walletOfOwner(address _owner) external view returns (uint256);

    function mint(string memory _handle) external;

    function mintWithPoh(string memory _handle) external;

    function activatePoh(uint256 _tokenId) external;

    function updateProfileData(uint256 _tokenId, string memory _newCid)
        external;

    function recoverAccount(
        address _oldAddress,
        uint256 _tokenId,
        uint256 _index,
        uint256 _recoveryKey,
        string calldata _handle,
        bytes32[] calldata _merkleProof
    ) external;

    function setBaseURI(string memory _newBaseURI) external;

    function updateRecoveryRoot(bytes32 _newRoot) external;

    function _afterMint(string memory _handle) external;

    function ownerOf(uint256 _tokenId) external view returns (address);

    event Mint(address indexed _user, uint256 _tokenId, string _handle);
}