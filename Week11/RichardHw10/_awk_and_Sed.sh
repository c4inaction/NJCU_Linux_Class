#!/bin/bash

echo "======= IN AWK FORM ======="
awk  '/\320\244\321\221\320\264\320\276\321\200/ {print "Fyodor"}' UTF8.txt
awk  '/\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f/ {print "Memory"}' UTF8.txt
awk  '/\156\151\303\261\157/ {print "boy"}' UTF8.txt
awk  '/\xF0\x9F\x98\x82/ {print "found ROFL Laughing"}' UTF8.txt
awk  '/\xF0\x9F\x98\xA2/ {print "found ROFL Crying"}' UTF8.txt


echo "========= IN SED FORM ========"
sed -n 's/^.*\o320\o244\o321\o221\o320\o264\o320\o276\o321\o200.*$/Fyodor/p' < UTF8.txt
sed -n 's/^.*\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f.*$/Memory/p' < UTF8.txt
sed -n 's/^.*\o156\o151\o303\o261\o157.*$/boy/p' < UTF8.txt
sed -n 's/^.*\xF0\x9F\x98\x82.*$/found ROFL Laughing \xF0\x9F\x98\x82/p' < UTF8.txt
sed -n 's/^.*\xF0\x9F\x98\xA2.*$/found ROFL Crying \xF0\x9F\x98\xA2/p' < UTF8.txt