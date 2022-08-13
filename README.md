# storage_clashing 
This repo to test storage clashing described here https://medium.com/coinmonks/storage-variable-clashing-in-starknet-ce5f28e60886 by Andrew Fleming. 

The caveat is that testing is done in protostar. 

Running the test, should fail as storage would read the total amount of A and B which from the test is `197` proving the clash. 

You can play with different values in the test to get a feel of it. 


You can run the test with 
`protostar test tests/test_storage_bug.cairo`
