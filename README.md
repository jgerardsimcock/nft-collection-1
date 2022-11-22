First collectoin of NFTs. Deploying to ethereum mainnet. 


What do I want this contract to do?

Receive calls to mint tokens everyday as I push new images to Arweave

What is the MVP of this?

When I mint I pass in a TokenURI string
Then we mint a token that points to the asset at the URI

https://r5sr6zbjdnqvvrin4z56zqzuwlo7coc7m2dvr6tpzuhx76rzgkra.arweave.net/j2UfZCkbYVrFDeZ77MM0st3xOF9mh1j6b80Pf_o5MqI

https://jxudqnf3isxb5oqief4ywuc425tnxj7icn7ssdtuvsio73gofmba.arweave.net/Teg4NLtErh66CCF5i1Bc12bbp-gTfykOdKyQ7-zOKwI



Here is how this has to work

Some process to deploy to Arweave and get base URL and have that URI returned
Poll the Arweave blockchain until we receive the locatoin of our file

Once we have the file location we can mint the nft associated with that along with the attrs etc

How can I mint basically one of ones and then set the uri after the fact.




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


