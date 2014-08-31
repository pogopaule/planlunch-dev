#! /bin/zsh

tmux new-session -d -s planlunch -c '../client' 'ember serve --proxy=http://localhost:8080/'
tmux set-option remain-on-exit
tmux split-window -c '../server' 'nodemon index.js'
tmux split-window -h -c '../server' 'nodemon --exec npm test'
tmux select-pane -U
tmux split-window -h -c '../client' 'ember test --server'
tmux new-window -c '../client'
tmux split-window -h -c '../server'
tmux select-window -t 0
cd ..
mvim -p client server dev
tmux attach
