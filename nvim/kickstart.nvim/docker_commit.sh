container_name=`docker ps | grep kickstart | awk '{print $NF}'`
echo $container_name
docker commit $container_name kickstart:ready
