#!/usr/bin/env bash

if [[ -z "${JAVA_HOME}" ]]; then
echo "JAVA_HOME needs to be defined."
exit 1
fi

if [[ ! -d java-tree-sitter ]]; then
git clone https://github.com/raghav-deepsource/java-tree-sitter.git
cd java-tree-sitter
git submodule init
git submodule sync
git submodule update
cd ..
fi

cd java-tree-sitter

./gradlew build publishToMavenLocal

cd ..
