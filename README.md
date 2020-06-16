# Intercompoter

## How to setup
- Install docker and docker-compose
- Clone repo
- run ```docker-compose build```
- run ```docker-compose run web rake db:create```
- run ```docker-compose run web rake db:migrate```
- run ```docker-compose up```
- Navigate to ```localhost:3000```

### Mailing - Mailcatcher
To catch and view emails in development navigate to ```http://localhost:1080```

Success!!