#!/bin/sh

curl -H "Content-Type: application/json" -X POST -d '{"hello":"world"}' http://172.17.0.2:3000/event
