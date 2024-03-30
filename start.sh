#!/bin/bash

# Define commands
command1="cd bungee && sudo java -jar bungee.jar"
command2="cd server && sudo java -jar server.jar"

# Run commands concurrently
bash -c "$command1" &
bash -c "$command2" &

# Wait for both commands to finish
wait

echo "Both tasks have finished."
