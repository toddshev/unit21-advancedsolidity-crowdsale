# PupperCoin Crowdsale

In this exercise, we are creating a new ERC20 token on the Ethereum network called "PupperCoin".  We will need to perform the following functions:
  * Create and deploy the token, with an initial supply.
  * Create and deploy all crowd sale functionality.
  * Create the auction, with begin and end dates.
  * Transfer a PupperCoin token to the correct wallet address, at the correct rate
  * Determine if and when the goal has been reached.

## Technology Needed

* The Solidity code is written in the Remix IDE located at www.remix.ethereum.org
* MyCrypto, Ganache, Metamask, and access to a test network (Ropsten or Kovan) will be needed to enable and test the transfer of tokens.
* Access to the OpenZeppelin framework (these will be imported from their github links in the same manner as a Content Distribution Network).
* OpenZeppelin has libraries that will be used for object inheritance when creating the token, and functionality for the crowd sale contract.

## The Process

There are two solidity files - PupperCoin.sol, and PupperCoinCrowdSale.sol.  The latter has two contracts, both of which will be deployed separately.  If you choose to use a different name for PupperCoin.sol, that is fine, though it is a dependency for the Crowd Sale file, so the import must be changed accordingly.


The first thing that must be done is the creation of the token.  Without the token, there is nothing to sell.  This can be done by entering the following code into Remix and named PupperCoin.sol.

![PupperCoin](Screenshots/PupperCoin.png)

When deploying, the initial supply must be entered as a parameter.  Remember to add 18 zeroes to the end of your desired initial supply!  Also note there will be a gas fee charged for the contract deployment.

Prior to deployment, ensure you have Ganache running for your local blockchain on your localhost, and select the options below - This will pop up MetaMask for you to confirm the transaction.

![Deploy](Screenshots/Deploy.png)

After this is completed, you can verify the initial supply, as well as see all of the additional functionality that was inherited.

![VerifyInit](Screenshots/VerifyInit.png)

Now that the coins have come to life, the next step is to get them into the marketplace via a crowdsale.  The first thing that must be done is to deploy the Crowdsale Deployer.  Below is the code needed to do so (the rest can be found in the repo):

![CrowdSale](Screenshots/CrowdSale.png)

This is compiled and deployed similar to the token itself. Ensure the parameters are filled out appropriately.  The goal in this case is 300 Ether.
Once again, a gas fee will be incurred.  Note you will need to select an address running on your localhost in Ganache.

![Ganache](Screenshots/Ganache.png)

![CrowdSaleDeploy](Screenshots/CrowdSaleDeploy.png)

Note the addresses returned.  Select and copy the token_sale_address.

![Addresses](Screenshots/CrowdSaleDeploy_Addresses.png)

Open the "PupperCoinCrowdSale" contract in the deployment window. 
Paste this address into the "At Address" field in the crowdsale contract, then click "At Address" to deploy.

![AtAddress](Screenshots/AtAddress.png)

Once again, you now have access to the crowd sale functionality on the left side of the IDE.

![CrowdSaleDeployed](Screenshots/CrowdSaleDeployed.png)

Due to lack of Test network Ether I am unable to deploy this on a test network and transfer between wallet addresses at this time.  In order to do so, switch your network on MetaMask to Ropsten, Kovan, or any other network in which you have Ether, and re-deploy using the steps above.  If your accounts do not have sufficient Ether (like mine), you may visit a test faucet and request test Ether, typically once per day.
