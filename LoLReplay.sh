batFile=$1
spectator=`cat $batFile | awk '/spectator.*/ { print }' | awk '{ print $9 " "  $10 " " $11 " " $12 " " $13 }'`
spectator="${spectator%\"}"
spectator="${spectator#\"}"
release=`ls /Applications/League\ of\ Legends.app/Contents/LoL/RADS/solutions/lol_game_client_sln/releases/`
cd /Applications/League\ of\ Legends.app/Contents/LoL/RADS/solutions/lol_game_client_sln/releases/$release/deploy/LeagueofLegends.app/Contents/MacOS
chmod u+x LeagueofLegends
riot_launched=true ./LeagueOfLegends 8394 LoLLauncher "" "$spectator"
