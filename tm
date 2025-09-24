#!/bin/bash
tmux has-session -t LOLOLEKIK 2&>/dev/null
if [ $? != 0 ]
then
  tmux new-session -s LOLOLEKIK -d
fi
tmux attach -t LOLOLEKIK
