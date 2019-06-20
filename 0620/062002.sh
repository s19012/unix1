code=$1

curl "http://express.heartrails.com/api/json?method=getLines&prefecture=$code" 2> /dev/null | jq '.response.line[]'
