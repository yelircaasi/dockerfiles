docker build --network=host --build-arg PYVERSION="3.8.16" -t pycuda:8 .
docker build --network=host --build-arg PYVERSION="3.10.11" -t pycuda:10 .
docker build --network=host --build-arg PYVERSION="3.11.3" -t pycuda:11 .
