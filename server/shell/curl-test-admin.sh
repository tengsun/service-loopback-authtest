BASE_URL=http://localhost:5000/api
ACCESS_TOKEN=xSLw4tG0ljNH2SMRWhcWJMdU9tA6woysbnsinaSEIb8XUZPdTa5TMe6SHZTAphLP
WS_ID=5b1a15c9d5a45c0b29966de6

echo -e "\n---------- LOGIN ----------"
curl -X POST -H "content-type: application/json" -d '{"email": "jack@test.com", "password": "test"}' $BASE_URL/AppUsers/login
echo -e "\n---------- LIST WS ----------"
curl -X GET -H "Authorization: $ACCESS_TOKEN" $BASE_URL/Workspaces/list
echo -e "\n---------- VIEW WS ----------"
curl -X GET -H "Authorization: $ACCESS_TOKEN" $BASE_URL/Workspaces/$WS_ID
echo -e "\n---------- EDIT WS ----------"
curl -X PATCH -H "Authorization: $ACCESS_TOKEN" -d '{"name": "WS", "description": "ws"}}' $BASE_URL/Workspaces/$WS_ID
echo -e "\n---------- DELETE WS ----------"
curl -X DELETE -H "Authorization: $ACCESS_TOKEN" $BASE_URL/Workspaces/$WS_ID
