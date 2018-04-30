#!/bin/bash

lutrus_home="/root/lutrus/"

cd $lutrus_home"site"
python3 ../https-server.py &
cd $lutrus_home"http"
python3 -m http.server 80 &

#cd /root/arazoo-prototypes/arazoo-product-discovery && npm run dev &

cd $lutrus_home

