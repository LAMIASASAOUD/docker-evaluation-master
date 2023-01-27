docker network create dockerwork

docker run --network=dockerwork -e PORT=8080 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker --name worker -e MULT=true -e ADD=false -d worker
docker run --network=dockerwork -e PORT=8090 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker1 --name worker1 -e MULT=false -e ADD=true -d worker
#docker run --network=dockerwork -e PORT=8095 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker2 --name worker2  -e MULT=true -e ADD=false -d worker



docker run --network=dockerwork -e PORT=3000 -e TASK=4  --name planner -d planner
#docker run --name planner  -d planner
