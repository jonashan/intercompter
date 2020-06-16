# Intercompoter

## How to setup
- Install docker and docker-compose
- Clone repo
- run ```docker-compose build```
- run ```docker-compose run web rake db:create```
- run ```docker-compose run web rake db:migrate```
- run ```docker-compose up```
- Navigate to ```localhost:3000```

Success!!