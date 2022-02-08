#!/bin/bash
#
# This script runs docker build to create the labelfusion docker image.
#

set -exu

root_dir=$(cd $(dirname $0)/../ && pwd)

tag_name="robotlocomotion/labelfusion:cudagl-9.2-devel-ubuntu16.04-ros"

docker build -f $root_dir/docker/labelfusion.dockerfile -t ${tag_name} $root_dir/docker
