#!/bin/bash
docker_user="macharladinesh"
image_name="webapp"
tag="v1"

echo "build"
docker build -t $image_name:$tag .

echo "tag"
docker tag $image_name:$tag $docker_user/$image_name:$tag

echo "push"
docker push $docker_user/$image_name:$tag

echo "success"
