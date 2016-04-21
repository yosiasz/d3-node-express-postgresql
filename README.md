# Chart Stack
A simple repo to demo use of data from postgresql to plot
bar charts using D3.js with a rest api using express.js

## Dependencies
NodeJS runs the server-side of the app. PostgreSQL is used for storing population data to be displayed on graphs.
pg-promise talks to the database

##### 1. [pg-promise](https://www.npmjs.com/package/pg-promise)
##### 2. [express.js](https://www.npmjs.com/package/express)
##### 3. [d3.js](https://www.npmjs.com/package/d3)

### Setting up databases
Make sure you initialize PostgreSQL before running. 

#### Windows

1. Refer to [Detailed installation guides](https://wiki.postgresql.org/wiki/Detailed_installation_guides) to set up a PostgreSQL instance.
2. Run sample seeding script on your PostgreSQL server
3. Change config to point to your PostgreSQL server

## Project Setup and Running Server
#### 1. Initial Setup
```bash
git clone https://github.com/yosiasz/d3-node-express-postgresql.git
cd d3-node-express-postgresql/
npm install -g nodemon
npm install
```

#### 4. Running the server
This will use node to launch the server:
```bash
npm start
```

Leave the server running, and now you can access [http://localhost:5000/](http://localhost:5000/).
