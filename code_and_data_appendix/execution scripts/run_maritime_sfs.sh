#!/bin/bash

wget -O ../examples/maritime/dataset/csv/aaai2025_maritime_dataset.zip "https://owncloud.skel.iit.demokritos.gr:443/index.php/s/RKkjalzsPQZmHVh/download"
unzip -o ../examples/maritime/dataset/csv/aaai2025_maritime_dataset.zip -d ../examples/maritime/dataset/csv/
rm ../examples/maritime/dataset/csv/aaai2025_maritime_dataset.zip

./run_rtec.sh --app=maritime_sfs --window-size=43200 --step=43200 --end-time=1444946400
./run_rtec.sh --app=maritime_sfs --window-size=86400 --step=86400 --end-time=1446242400
./run_rtec.sh --app=maritime_sfs --window-size=172800 --step=172800 --end-time=1448834400
./run_rtec.sh --app=maritime_sfs --window-size=345600 --step=345600 --end-time=1448979230 # end-time is earlier than in the experiments in the paper; we could provide the entire datasets due to the space constraints of the submission platform.

