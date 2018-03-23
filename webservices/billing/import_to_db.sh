#!/bin/bash

source /usr/local/etc/colte/coltenv

curl --cookie "user=$COLTE_NT_USERNAME; password=$COLTE_NT_PASS" http://localhost:3002/lua/colte_log_bandwidth.lua > $COLTE_DIR/webservices/billing/tmp_dump.txt

python $COLTE_DIR/webservices/billing/import_to_db.py
