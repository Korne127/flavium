#!/usr/bin/env bash

DATA=$(pwd)/data
mkdir -D$DATA/results
mkdir $(pwd)/work

java \
    -DSOLUTION_FILENAME=MyKuromasuSolver.java\
    -DRESET_SCRIPT="$(pwd)/reset.sh"\
    -DRUN_SCRIPT="$(pwd)/run.sh"\
    -DREGEX_SUCCESS_RATE='success (.*?) %' \
    -DWORK_FOLDER="$(pwd)/work/"\
    -DRESULT_FOLDER="$DATA/data/results/"\
    -DWORK_QUEUE="$DATA/workqueue.json"\
    -DLEADERBOARD_FILE="$DATA/data/leaderboard.json" \
    -DPORT=8080 \
    -jar flavium-1.0-all.jar
