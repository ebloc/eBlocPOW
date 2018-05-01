admin.addPeer("enode://7f3bebdd678d5a0ebe2701b2f7858763f5ce03fc531fe989fb7bb41d2e8e1237ae5b092666171a180afba0c47f1aad055e2bf6e1287fcdc756f183902764eba2@79.123.177.145:3000");
admin.addPeer("enode://4d331051d8fb471c87a9351b36ffb72bf445a9337727d229e03c668f99897264bf11e1b897b1561f5889825e2211b06858139fa469fdf73c64d43a567ea72479@193.140.197.95:3000");
admin.addPeer("enode://9fbac6e71e1478506987872b7d3d6de19681527971ae243044daa44221a99ce5944839cd4057133f18b3610f5c59bb2fd7077fafa208d8eb52918faf06782d48@79.123.177.145:3000");
admin.addPeer("enode://4419bba10a6db49687986279aa5d70ff3a6eb64a34de0d71069474a76e140110bfd17f43881e2d75f06381af9b4d4bdee9ff89335ded2399bca958c5adf29992@184.73.134.188:30303");
admin.addPeer("enode://0b157db41df19e3b5dfe36571ad34d17621f79afea313df2fc067238a8a8ecd454bae37f45632523de02f8ec73ba2121135f751c0a9e76abe4b6ec98777ec235@35.231.95.41:3001") //Google Instance

function checkAllBalances() { var i =0; eth.accounts.forEach( function(e){ console.log("  eth.accounts["+i+"]: " +  e + " \tbalance: " + web3.fromWei(eth.getBalance(e), "ether") + " ether"); i++; })}; checkAllBalances();
