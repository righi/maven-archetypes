#!/bin/bash
cd java-1_6
mvn install
cd ../java-1_6-spring3
mvn install
cd ../jee-5
mvn install
cd ../jee-5-spring3-mvc
mvn install
cd ..
echo Done Installing Plugins

