#!/bin/bash

sudo ./build/hw4_server --read=127.0.0.1 --write=127.0.0.1 --port=3306 --login=stud --password=stud --database=stud --init_db --queue=127.0.0.1:9092 --topic=event_server