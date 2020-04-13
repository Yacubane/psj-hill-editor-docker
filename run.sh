#!/usr/bin/env sh
rm -rf output
mkdir output
docker run -v ${PWD}/hill:/psj-hill:Z -v ${PWD}/output:/psj-output:Z -t psj-hill-editor
