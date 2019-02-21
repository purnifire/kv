#!/bin/bash

curl --silent http://www.nbrb.by/API/ExRates/Rates/145 | awk -F"," '{for(i=1;i<=NF;++i){ if(i==5 || i==6) {print $i} }}' | awk -F":" '{for(i=1;i<=NF;++i){ if(i==2 || i==4) {print $i} }}' | awk -F"}" '{ print $1 }' | sed 's/\"//g' | tail --lines=1
