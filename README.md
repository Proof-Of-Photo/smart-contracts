# Proof of Picture

Proof of Picture is a marketplace where publications can ask for images, people can submit images that get verified as non-AI with novel C2PA technology. Photographers can earn from verified images they submit through pay-outs from publications. 

This is the smart contracts for Proof of Photo. Please see the ReadMe in the organization page for more information.

## Setup locally

- Create your env file config: `mv .env.example .env`
- Complete all the variables in the `.env` file
- Install dependencies: `npm install`
- Launch your local node: `npx hardhat node`
- Deploy contract: `npx hardhat deploy-full --use-test-erc20 --network localhost`

## Tests 

### Coverage

<img width="648" alt="image" src="https://user-images.githubusercontent.com/747152/228285991-de2efaac-f078-4942-8785-1dba88d76984.png">

- [Searching for something else? Congrats you've found an easter egg!](https://claim.talentlayer.org/images/ee/DW8lwIQyDr.jpg)

### Run

- `npx hardhat test`

## Scripts

### Folder structure

- playground: use on local or testnet to create fake data and test the protocol
- tasks: configurable commands to use in mainnet
  - protocol: Used to manage the protocol by TalentLayer (mint a platform, allow a new arbitrator...)
  - platform: Used to manage a platform by there owner (update fee)
  - deploy: Used to deploy the protocol and his upgrades
- utils: common functions

### Commands

- run `npx hardhat` to see all the commands
- use `Makefile` for easier commands
  - `make deploy` to deploy the protocol
  - then `make setup-fakedata` to create fake data with playgrounds scripts

### Contract Addresses

**Mantle Testnet**
| Contract Name           | Addresss                                   |
| ----------------------- | ------------------------------------------ |
| TalentLayer Platform Id | 0x2Ff30AF2e8c2dF61D84E02099e0601a1d9Bc1DfE |
| TalentLayer Id          | 0xf5EB280683F380d9dc8a87e45EaBedD2E6a17d10 |
| TalentLayer Service     | 0x5BD37d36A762aa0acE3726c91B10301935d956a7 |
| TalentLayer Review      | 0xD2b9f55Eefd4463125c83C69300C6ffdD8A773Bc |
| TalentLayer Arbitrator  | 0x7222bAfCB64F9d415192fFd6dCc673174b12B9CE |
| TalentLayer Escrow      | 0x9e8cB322645982B8111b685f2342e17925bC1515 |

**Celo Alfajores Testnet**
| Contract Name           | Addresss                                   |
| ----------------------- | ------------------------------------------ |
| TalentLayer Platform Id | 0x89366dDA3A50a8C1a4493659764A909Fb148ac52 |
| TalentLayer Id          | 0xEBd61d20528f83a9d57ccf22C7Ee6D79cec70452 |
| TalentLayer Service     | 0xE34Db2FDD56ad67F9F7298d34Ba58b83CD17eA63 |
| TalentLayer Review      | 0x4d0A0Ce220f6286ecf4Ad2D3D2001A86618AAbA5 |
| TalentLayer Arbitrator  | 0xF40adFF243a207f7F96D2448309919B2B878cBc2 |
| TalentLayer Escrow      | 0xCe48dbBD5210B7CA02051f8dBc31a14cE0Ae2e86 |

