#!/bin/bash
cd static
sudo rm -r *
sudo rm .DS_Store
git commit -m "Bersihkan sudo rm -r *"
git push
cd ..
sudo ./buster.py generate --domain=https://ikhwanudd.in/
sudo cp CNAME static/
sudo cp README.md static/
sudo cp deploy.sh static/
sudo cp googleadbed33964f3bd03.html static/
sudo ./buster.py deploy
