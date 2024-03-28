#! /usr/bin/env osascript

set apiDir to "~/rep/toypo-api/"
set apiCom to "bundle exec rails server -b 0.0.0.0"
set webDir to "~/rep/toypo4store-web/"
set webCom to "yarn start"
set lineDir to "~/rep/toypo-web/"
set lineCom to "yarn dev"
set appDir to "~/rep/toypo-app/"
set appCom to "yarn run ios --simulator='iPhone 15 Pro 17.2'"
set ngrokCom to "ngrok http http://localhost:5174/"

tell application "iTerm"
  tell current window
    tell current session
      delay 2
      write text "tmux new-session -s oneSession -n api"
      delay 2
      write text "tmux new-window -t oneSession -n web"
      delay 2
      write text "tmux new-window -t oneSession -n lineapp"
      delay 2
      write text "tmux new-window -t oneSession -n app"
      delay 2
      write text "tmux new-window -t oneSession -n ngrok"
      delay 2
      write text "tmux send-keys -t oneSession:api 'cd " & apiDir & " && " & apiCom & "' C-m"
      write text "tmux send-keys -t oneSession:web 'cd " & webDir & " && " & webCom & "' C-m"
      write text "tmux send-keys -t oneSession:lineapp 'cd " & lineDir & " && " & lineCom & "' C-m"
      write text "tmux send-keys -t oneSession:app 'cd " & appDir & " && " & appCom & "' C-m"
      write text "tmux send-keys -t oneSession:ngrok '" & ngrokCom & "' C-m"
    end tell
  end tell
end tell
