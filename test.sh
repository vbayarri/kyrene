#!/bin/sh

curl -H "Content-Type: application/json" -X POST -d '{"hello":"world"}' http://localhost:3000/event
