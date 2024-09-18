#!/bin/bash
docker build -t my-node-app .
docker run -d --name my-node-app-container -p 3000:3000 my-node-app
