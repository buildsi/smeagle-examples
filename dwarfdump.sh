#!/bin/bash
docker run -it -v $PWD:/code -it gcc:12.1 bash -c "apt-get update && apt-get install -y dwarfdump && dwarfdump /code/$1"
