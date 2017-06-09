#!/bin/bash

set -e

#VERSION=`cat version/number`

pushd web-service
#  ./gradlew -PversionNumber=$VERSION clean assemble
  ./gradlew clean assemble
popd

#cp project/build/libs/$ARTIFACT_ID-$VERSION.jar build-output/.
cp web-service/build/libs/$ARTIFACT_ID.jar build-output/.
