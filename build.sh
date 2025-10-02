#!/usr/bin/env sh

fail() {
  exit_code=$1
  shift
  echo "ERROR: $@" 
  exit ${exit_code}
}

usage() {
  echo "usage: $(basename $0) <tag> [push]"
}

do_all_images() {
  for single_dir in */; do
    cd ${single_dir}
    .$0 $* || fail "Build of $(basename pwd) failed"
    cd -
  done
}

if [ -e $(basename $0) ]; then
  do_all_images $*
else
  [ -e Dockerfile ] || fail "Call this program from within a folder containing a docker file"
  
  tag=$1
  [ -z "${tag}" ] && {
    usage 
    fail 1 "Tag is required"
  }
  shift
  
  do_push=0
  [ "$1" == "push" ] && do_push=1
  
  full_image_name="hifigraz/$(basename $(pwd)):${tag}"
  
  echo "Building image: ${full_image_name}"
  
  docker build --tag "${full_image_name}" . || fail 1 "Build failed"

  if [ "${do_push}" == "1" ]; then
    echo PUSHING
    docker push "${full_image_name}" || fail 2 "Push failed"
  fi
fi

