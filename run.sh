docker network create dockerwork
docker run --network=dockerwork -e PORT=3000 -e TASK=4  --name planner -d planner

docker run --network=dockerwork -e PORT=8080 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker0 --name worker0  -d worker
docker run --network=dockerwork -e PORT=8090 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker1 --name worker1  -d worker
#docker run --network=dockerwork -e PORT=8095 -e PLANNER=http://planner:3000 -e ADDRESS=http://worker2 --name worker2  -e MULT=true -e ADD=false -d worker



#docker run --name planner  -d planner
