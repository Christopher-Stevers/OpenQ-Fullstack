#!/bin/bash
. ./colors.sh

cd ./OpenQ-Contracts
echo -e "Deploying Hardhat Ethreum RPC node on localhost:8545\n"
echo -e "This will take 5 seconds..."
echo -e "You can find the local nodes public/private keys in ${BBlue}OpenQ-Contracts/nohup.out${Color_Off}\n"

if [ -f "./nohup.out" ]
then
    rm ./nohup.out    
fi

nohup yarn ethnode &
sleep 5