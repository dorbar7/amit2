result=$(curl -s localhost:3000)
echo $result
if [[ $result == *"amit0"* ]]; then
  echo "found amit"
  exit 0
fi
echo "amit is missing"
exit 1