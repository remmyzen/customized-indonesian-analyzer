#!/bin/bash

javac IndexFiles.java -cp "lib/*"

java -cp ".:lib/*" IndexFiles