#!/bin/bash

command1="cd bungee && sudo java -jar bungee.jar"
command2="cd server && sudo java -jar server.jar"

# Run commands concurrently
eval "$command1" &
eval "$command2" &

wait

echo "Both tasks have finished."
