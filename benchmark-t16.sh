#!/bin/bash
sbt -batch -java-home /usr/lib/jvm/oracle-graalvm-jdk-20 clean 'jsoniter-scala-benchmarkJVM/jmh:run -t 16 -p size=128 -prof gc -rf json -rff oracle-graalvm-jdk-20-t16.json .*' 2>&1 | tee oracle-graalvm-jdk-20-t16.txt
sbt -batch -java-home /usr/lib/jvm/oracle-graalvm-jdk-17 clean 'jsoniter-scala-benchmarkJVM/jmh:run -t 16 -p size=128 -prof gc -rf json -rff oracle-graalvm-jdk-17-t16.json .*' 2>&1 | tee oracle-graalvm-jdk-17-t16.txt
sbt -batch -java-home /usr/lib/jvm/graalvm-community-jdk-20 clean 'jsoniter-scala-benchmarkJVM/jmh:run -t 16 -p size=128 -prof gc -rf json -rff graalvm-community-jdk-20-t16.json .*' 2>&1 | tee graalvm-community-jdk-20-t16.txt
sbt -batch -java-home /usr/lib/jvm/graalvm-community-jdk-17 clean 'jsoniter-scala-benchmarkJVM/jmh:run -t 16 -p size=128 -prof gc -rf json -rff graalvm-community-jdk-17-t16.json .*' 2>&1 | tee graalvm-community-jdk-17-t16.txt
sbt -batch -java-home /usr/lib/jvm/zulu-17 clean 'jsoniter-scala-benchmarkJVM/jmh:run -jvm /usr/lib/jvm/jdk-22/bin/java -t 16 -p size=128 -prof gc -rf json -rff jdk-22-t16.json .*' 2>&1 | tee jdk-22-t16.txt
sbt -batch -java-home /usr/lib/jvm/zulu-17 clean 'jsoniter-scala-benchmarkJVM/jmh:run -t 16 -p size=128 -prof gc -rf json -rff zulu-17-t16.json .*' 2>&1 | tee zulu-17-t16.txt
sbt -batch -java-home /usr/lib/jvm/zulu-11 clean 'jsoniter-scala-benchmarkJVM/jmh:run -t 16 -p size=128 -prof gc -rf json -rff zulu-11-t16.json .*' 2>&1 | tee zulu-11-t16.txt
