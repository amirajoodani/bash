#!/bin/bash

ss -tulpn | grep LISTEN | tr -s " " | cut -d " " -f5 | rev | cut -d ":" -f1 | rev