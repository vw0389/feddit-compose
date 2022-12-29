# Feddit Compose

Contains useful things list postman collections, docker-compose.yml, and running instructions for feddit.

I've outlined some common use scenarios below
## Running Compose
You should have your directories in the following structure.

`/feddit/feddit-compose`

`/feddit/feddit-backend`

`/feddit/feddit-frontend`

Take a look at the docker-compose.yml, you will need to set all the variables in feddit-backend as well as nginx port (typically 80)

then execute `entry-compose.sh`, providing you have docker installed with the variables set correctly it should work.

### Running just the database
Applying the postGIS extentions to PostgreSQL is a bit of a pain, so I opted to use this compose as my DB

Comment out everything in the docker-compose.yml except `feddit-db` then run `entry-compose.sh` as normal

You would then have to run the backend and frontend manually via `./mvnw spring-boot:run` and `npm run start` respectively

### Importing the Postman Collection
The postman collection is `Feddit.postman_collection.json`, import it into postman