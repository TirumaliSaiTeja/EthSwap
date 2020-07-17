const Token = artifacts.require("Token");
const EthSwap = artifacts.require("EthSwap");

module.exports = async function(deployer) {
  // Deploying token
  await deployer.deploy(Token);
  const token = await Token.deployed();

  // Deploying EthSwap
  await deployer.deploy(EthSwap, token.address);
  const ethSwap = await EthSwap.deployed();

  await token.transfer(ethSwap.address, "1000000000000000000000000");
};
