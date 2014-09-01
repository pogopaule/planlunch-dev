#! /bin/bash

mkdir planlunch
cd planlunch
git clone git@github.com:pogopaule/planlunch-client.git client
git clone git@github.com:pogopaule/planlunch-server.git server
git clone git@github.com:pogopaule/planlunch-dev.git dev

cd client
npm install

cd ../server
npm install

cd ..

echo 'all set up. start by running "./dev/start.sh"'
