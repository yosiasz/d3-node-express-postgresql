# med3
A simple repo to demo use of data from postgresql to plot
bar charts using D3.js with a rest api using express.js

[postgresql.js](https://www.npmjs.com/package/mssql)
[express.js](https://www.npmjs.com/package/express)
[d3.js](https://www.npmjs.com/package/d3)

## Installation 

```bash
 From a command prompt
  git clone this repo
  Go to folder d3-node-express-postgresql
   cd d3-node-express-postgresql
  Install
   npm install
  Run sample sql script in your postgres server
  or from cmd shell Run
    psql -U postgres -h your.postgres.server.ip -d d3nodeexpresspostgresql -a -f /tmp/sampledatabase.sql
  Change config to point to your postgresql server
  Run
    npm start
  Browse to see charts
   http://localhost:5000/
```