#!/bin/bash

apt install default-jdk
# Define commands
command1="cd bungee && java -jar bungee.jar"
command2="cd server && java -jar server.jar"

# Run commands concurrently
bash -c "$command1" &
bash -c "$command2" &

# Wait for both commands to finish
wait

echo "Both tasks have finished."
