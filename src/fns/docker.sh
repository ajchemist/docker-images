#!/bin/bash


function docker_build()
{
    DOCKERFILE_PATH=${DOCKERFILE_PATH:?}
    if [ -f $DOCKERFILE_PATH ]; then
        DOCKERFILE_PATH=$(dirname $DOCKERFILE_PATH)
    fi
    pushd $DOCKERFILE_PATH
    docker build
    popd
}


function docker_tags()
{
    #
    for _tag in ${TAGS_AFTER_VARIANT}
    do
        docker tag ${SOURCE_IMAGE} ${IMAGE_NAME}:${VARIANT}${_tag:+-$_tag}
    done


    #
    for _tag in ${TAGS}
    do
        docker tag ${SOURCE_IMAGE} ${IMAGE_NAME}:${_tag}
    done
}


function docker_push_tags()
{
    for _tag in ${TAGS}
    do
        docker push ${SOURCE_IMAGE} ${IMAGE_NAME}:${_tag}
    done
}
