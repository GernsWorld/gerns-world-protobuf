#!/bin/bash

ROOT=`dirname $0`
pushd $ROOT
ROOT=`pwd`
popd

echo $ROOT

export PATH=$ROOT/tools/protoc/bin:$PATH

MOBS_GRPC_OUT=./
MOBS_PROTO_FILES=./mob-api.proto

protoc.exe \
    --go_out=$MOBS_GRPC_OUT \
    --go_opt=M$MOBS_PROTO_FILES=./ \
    --go-grpc_out=$MOBS_GRPC_OUT \
    --go-grpc_opt=M$MOBS_PROTO_FILES=./ \
    $MOBS_PROTO_FILES
