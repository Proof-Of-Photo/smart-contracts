import { ethers } from "hardhat";
import { get, ConfigProperty } from "../../configManager";
import { Network } from "../config";
const hre = require("hardhat");

// Then Alice create a job, and others add proposals
async function main() {
  const network = await hre.network.name;
  console.log(network);

  const [alice, bob, carol, dave] = await ethers.getSigners();
  const jobRegistry = await ethers.getContractAt(
    "JobRegistry",
    get(network as Network, ConfigProperty.JobRegistry)
  );

  let jobId = await jobRegistry.nextJobId();
  jobId = jobId.sub(1);
  console.log("jobId", jobId.toString());

  const rateTokenBob = "0xb64a30399f7F6b0C154c2E7Af0a3ec7B0A5b131a";

  //Bob update his proposal
  await jobRegistry
    .connect(bob)
    .updateProposal(jobId, rateTokenBob, 100, "ipfs://bobUpdateProposal");
}
// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
