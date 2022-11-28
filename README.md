First collectoin of NFTs. Deploying to ethereum mainnet. 

Notes [here](NOTES.md)

What do I want this contract to do?

Receive calls to mint tokens everyday as I push new images to Arweave

What is the MVP of this?

When I mint I pass in a TokenURI string
Then we mint a token that points to the asset at the URI

https://r5sr6zbjdnqvvrin4z56zqzuwlo7coc7m2dvr6tpzuhx76rzgkra.arweave.net/j2UfZCkbYVrFDeZ77MM0st3xOF9mh1j6b80Pf_o5MqI

https://jxudqnf3isxb5oqief4ywuc425tnxj7icn7ssdtuvsio73gofmba.arweave.net/Teg4NLtErh66CCF5i1Bc12bbp-gTfykOdKyQ7-zOKwI



Here is how this has to work

Using a smart contract to track the ownership of NFT’s. Deploy the contract on eth mainnet, polygon or L2. Each NFT will be an image that comes from a stable diffusion rendering. The images will all be stored on Arweave and since the image URLs will change or be unpredictable we need to be able to update the URI. And since we are updating the URI each time we should create a mapping between the URI and the tokenID. So when we burn something what we will actually be doing is Looking up a tokenID, removing the url or turning it to null and then we will send the token to address(0).

Functions that we’ll need

1. Mint
2. Burn
3. Transfer
4. Setting URI for Arweave
5. Pause/Unpause

The Sequence is: 

1. Create Image
2. Deploy to Arweave
3. Mint NFT on contract with the URI set to the Arweave address 
4. Put it for sale

* Set up an alchemy account or an Infura account 
* Create a wallet and get your Goerli account address from [here](https://goerlifaucet.com/)

* Install Foundry
* Write your nft contract 
* write tests
* deploy to testnet 

* deploy to polygon or arbitrum/optimism


Foundry notes

You need to initialize a foundry repo
You need to install the oz contracts


Tools used in this application

[Arweave Go SDK](https://github.com/everFinance/goar)
[Foundry](https://github.com/foundry-rs)
[Solidity]
[Stable Diffusion](https://github.com/CompVis/stable-diffusion)


