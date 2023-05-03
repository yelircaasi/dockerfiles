docker build --network=host --build-arg PYVERSION="3.8.16" -t pybuntu:8 .
docker build --network=host --build-arg PYVERSION="3.10.11" -t pybuntu:10 .
docker build --network=host --build-arg PYVERSION="3.11.3" -t pybuntu:11 .
