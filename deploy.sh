#!/bin/bash
cd static
sudo rm -r *
ls -la
cd ..
sudo ./buster.py generate --domain=http://localhost:2368
sudo cp CNAME static/
sudo cp README.md static/
sudo cp deploy.sh static/
sudo rm .DS_Store
ls -la
sudo ./buster.py deploy
