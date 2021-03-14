# ethereum-smart-contracts

Working with bytes16 type elements in the contract
---------------------------------------------------
1. To save storage space on main ethereum blockchain or one of the test networks you should convert all 'string' types to 'bytes*' types 
2. Notice the use of web3.toAscii in the client web app when fetching values for these types .. and no need for conversion when calling methods to set these
3. When you want to test the deployed contract from remix IDE (http://remix.ethereum.org/), you would need to convert ASCII strings to hexadecimal (http://string-functions.com/string-hex.aspx), and <b>pad the string with zeros</b>
e.g. - 
- 'Pingu' = 50696e6775
- correponding padded string - 0x50696e67750000000000000000000000