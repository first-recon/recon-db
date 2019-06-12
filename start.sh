#!/bin/sh

docker build -t recon-db:local . && docker run -ditp 5432:5432 --name recon-db recon-db:local
