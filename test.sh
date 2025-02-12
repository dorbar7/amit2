result=$(curl -s http://localhost:3000)
if [[ $result != *"amit0"* ]]; then
  echo "amit is missing"
  exit 1
fi
 echo "found amit"


result=$(curl -s -H 'Content-Type: application/json' -X POST localhost:3000/movie -d '{"name":"amit83", "time": "123"}' )
if [[ $result != *"amit83"* && $result == *"123"* ]]; then
  echo "amit is missing"
  exit 1
fi
 echo "found amit"


result=$(curl -s http://localhost:3000)
if [[ $result != *"amit83"* ]]; then
  echo "amit is missing"
  exit 1
fi
 echo "found amit"
 exit 0