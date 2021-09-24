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


# https://unix.stackexchange.com/questions/146942/how-can-i-test-if-a-variable-is-empty-or-contains-only-spaces
function docker_tags()
{
    #
    local IMAGE_NAME=${1:-$IMAGE_NAME}
    if [ -z "${TAGS_AFTER_VARIANT// }" ];
    then
        docker tag ${SOURCE_IMAGE} ${IMAGE_NAME}:${VARIANT}
    else
        for _tag in ${TAGS_AFTER_VARIANT}
        do
            docker tag ${SOURCE_IMAGE} ${IMAGE_NAME}:${VARIANT}${_tag:+-$_tag}
        done
    fi


    #
    for _tag in ${TAGS}
    do
        docker tag ${SOURCE_IMAGE} ${IMAGE_NAME}:${_tag}
    done
}


function docker_push_tags()
{
    local IMAGE_NAME=${1:-$IMAGE_NAME}
    for _tag in ${TAGS}
    do
        docker push ${SOURCE_IMAGE} ${IMAGE_NAME}:${_tag}
    done
}
