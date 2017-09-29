#!/bin/bash
umask 027
docker run -it -v $(pwd):/go/src golang:1.9 sh -c "go get github.com/cyg2009/MyTestCode && cd /go/src/github.com/cyg2009/MyTestCode && CGO_ENABLED=0
 GO_EXTLINK_ENABLED=0  go build --ldflags '-extldflags "-static"' -a  -o /go/src/processrouter && rm -fr /go/src/github.com"

echo To build the docker image: 
echo docker build -t my:1.0 .

