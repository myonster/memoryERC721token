var Memory = artifacts.require("Memory");


module.exports = function (deployer) {
  deployer.then(async () => {
    await deployer.deploy(Memory)
  });
};