#!/bin/bash
cd static
sudo rm -r *
sudo rm .DS_Store
ls -la
git commit -m "Bersihkan sudo rm -r *"
git push 
cd ..
sudo ./buster.py generate --domain=http://localhost:2368
sudo cp CNAME static/
sudo cp README.md static/
sudo cp deploy.sh static/
ls -la
sudo ./buster.py deploy
