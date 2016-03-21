#!/bin/bash

javac *.java -cp "lib/*"

java -cp ".:lib/*" SearchFiles
