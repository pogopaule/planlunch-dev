#! /bin/zsh

tmux new-session -d -s planlunch -c 'client' 'ember serve --proxy=http://localhost:8080/'
tmux set-option remain-on-exit
tmux split-window -c 'server' 'nodemon index.js'
tmux split-window -h -c 'server'
tmux select-pane -U
tmux split-window -h -c 'client'
mvim
tmux attach
