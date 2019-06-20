
curl "http://express.heartrails.com/api/json?method=getStations&line=$1" 2> /dev/null | jq '.response.station[].name'
