docker network create dockerwork

docker run --network=dockerwork -e PORT=8080 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker --name worker -d worker
docker run --network=dockerwork -e PORT=3000 -e TASK=4  --name planner -d planner
#docker run --name planner  -d planner