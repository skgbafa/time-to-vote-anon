import { EAS, SchemaEncoder } from "@ethereum-attestation-service/eas-sdk";
import { ethers } from "ethers";
import QuickNode from '@quicknode/sdk';

export const EASContractAddress = "0x1a5650d0ecbca349dd84bafa85790e3e6955eb84";

export async function attest(recipient: string) {
  // Initialize the sdk with the address of the EAS Schema contract address
  const eas = new EAS(EASContractAddress);
  // Gets a default provider (in production use something else like infura/alchemy)
  const provider = new ethers.providers.InfuraProvider("optimism-goerli", process.env.INFURA_API_KEY);

  // your private key
  let privateKey = process.env.ETH_PRIVATE_KEY || "";

  // Create a wallet instance from a private key and connect it to the provider
  let signer = new ethers.Wallet(privateKey, provider);
  // const eas = new EAS(EASContractAddress);
  eas.connect(signer);

  // Connects an ethers style provider/signingProvider to perform read/write functions.
  // MUST be a signer to do write operations!

  // Initialize SchemaEncoder with the schema string
  const schemaEncoder = new SchemaEncoder("bool hasTransactedOnMainnet");
  const encodedData = schemaEncoder.encodeData([
    { name: "hasTransactedOnMainnet", value: 1, type: "bool" },
  ]);

  // https://optimism-goerli.easscan.org/schema/view/0xd7b52db2d3e6cd012af40cf77a5d737fef309ab6eda08099f1994f805230494b
  const schemaUID =
    "0xd7b52db2d3e6cd012af40cf77a5d737fef309ab6eda08099f1994f805230494b";

  const tx = await eas.attest({
    schema: schemaUID,
    data: {
      recipient,
      expirationTime: 0,
      revocable: true,
      data: encodedData,
    },
  });


  const newAttestationUID = await tx.wait();

  console.log("New attestation UID:", newAttestationUID);
}


export const hasMainnetTransactions = async (accountAddress: string) => {
    const provider = new ethers.providers.InfuraProvider("mainnet", process.env.INFURA_API_KEY);
    const qn = new QuickNode.API({
        graphApiKey: process.env.QUICKNODE_API_KEY,
        defaultChain: 'ethereum',
      });
    try {
        const transactionCount = await provider.getTransactionCount(accountAddress);
        console.log(`Transaction count for the account address ${accountAddress}: `, transactionCount);
        return transactionCount > 0;
    } 
    catch (error) {
        console.error(`Error checking transactions for the account address ${accountAddress}: `, error);
        // Here we throw the error further as we might want to handle it outside the function   
        throw error;
    }  
};