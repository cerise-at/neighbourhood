# neighbourhood

HOW TO RUN THE CODE
Clone the repo
in your terminal cd into the code folder 
using docker CLI:
    `docker run --name neighbourhood-db  --mount type=bind,source="$(pwd)",dst="/code" -e POSTGRES_PASSWORD=password -d postgres`
    `docker exec -it neighbourhood-db psql -U postgres` to open postgres
    `\i code/setup.sql` to create tables



ROUTES 
to get all people   GET     /people
to get all houses   GET     /addresses

(one form sends both requests)
to add a new people POST    /people/new
to add a new house  POST    /addresses/new

(to get house, address and owner)
get the house id   GET     /addresses:streetAddress ->
                    GET houseId of streetAddress from addresses ->
                    GET personId from houses ->
                    GET fullName from people;
/addresses?streetAddress=<streetAddress>
return data - from data get <houseId>
/houses?houseId=<houseId>
return data - from data get <personId>
/people?personId=<personId>


(to get people with certain ages)







