#!/usr/bin/env bash
wget -i spotify-client_1.1.0.237.txt
mv spotify-client_1.0.72.117.g6bd7cc73-35_i386.deb spotify-client_1.0.72.117_i386.deb
mv spotify-client_1.1.0.237.g378f6f25-11_amd64.deb spotify-client_1.1.0.237_amd64.deb
dpkg-sig -k 959CDDD1 --sign bundler *.deb
mv *.deb ../../
