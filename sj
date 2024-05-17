const Web3 = require('web3');

// 连接到以太坊节点
const web3 = new Web3('https://mainnet.infura.io/v3/YOUR_INFURA_PROJECT_ID');

// 要查询的账户地址
const address = '0xYourAccountAddress';

// 查询账户余额
web3.eth.getBalance(address, (err, balance) => {
  if (err) {
    console.error('Error occurred:', err);
  } else {
    // 将余额转换为以太单位
    const balanceInEth = web3.utils.fromWei(balance, 'ether');
    console.log(`账户 ${address} 的余额为 ${balanceInEth} ETH`);
  }
});
