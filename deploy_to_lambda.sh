#!/bin/bash

set -e

cd /deploy
zip -r LambdaTest.zip LambdaTest.js
aws lambda update-function-code --function-name LambdaTest --zip-file fileb://LambdaTest.zip
aws lambda invoke --function-name LambdaTest --payload "`cat data.json`" lambdaoutput.txt
cat lambdaoutput.txt
