#!/usr/bin/env bash

if [[ ! -d java-tree-sitter ]]; then
git clone https://github.com/raghav-deepsource/java-tree-sitter.git
cd java-tree-sitter
git submodule init
git submodule sync
git submodule update
cd ..
fi

cd java-tree-sitter

python3 build.py -o libjava-tree-sitter tree-sitter-java

./gradlew :build publishToMavenLocal

cd ..
