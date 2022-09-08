#!/bin/zsh

# # #create new tab for Path Follower
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
#get id of open session
sess0=`qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.activeSessionId`
#run command on active session
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "cd ~/robocomp/components/dsr-graph/components/path_follower_ASMC/"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "bin/path_follower_ASMC etc/config_giraff_ASMC"
#change the title of session
qdbus org.kde.yakuake /yakuake/tabs org.kde.yakuake.setTabTitle $sess0 "follow"

# create new tab for Path Follower
# qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
# #get id of open session
# sess0=`qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.activeSessionId`
# #run command on active session
# qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "cd ~/robocomp/components/dsr-graph/components/path_follower/"
# qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "bin/path_follower etc/config_giraff"
# #change the title of session
# qdbus org.kde.yakuake /yakuake/tabs org.kde.yakuake.setTabTitle $sess0 "follow"


#create new tab for Path Planner
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
#get id of open session
sess0=`qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.activeSessionId`
#run command on active session
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "cd ~/robocomp/components/dsr-graph/components/path_planner_astar"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "bin/path_planner_astar etc/config_giraff_beta"
#change the title of session
qdbus org.kde.yakuake /yakuake/tabs org.kde.yakuake.setTabTitle $sess0 "path_planner_astar"

#create new tab for Mission Controller
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
#get id of open session
sess0=`qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.activeSessionId`
#run command on active session
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "cd ~/robocomp/components/robocomp-giraff/agentes/mission_controller_giraff_mod"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "bin/mission_controller_giraff etc/config"
#change the title of session
qdbus org.kde.yakuake /yakuake/tabs org.kde.yakuake.setTabTitle $sess0 "mission"

#create new tab for Giraff DSR
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
#get id of open session
sess0=`qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.activeSessionId`
#run command on active session
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "cd ~/robocomp/components/dsr-graph/components/giraff_dsr"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "bin/giraff_dsr etc/config_coppelia"
#change the title of session
qdbus org.kde.yakuake /yakuake/tabs org.kde.yakuake.setTabTitle $sess0 "giraff_dsr"

#create new tab for ID Server
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
#get id of open session
sess0=`qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.activeSessionId`
#run command on active session
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "cd ~/robocomp/components/dsr-graph/components/idserver"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "bin/idserver etc/config_giraff_beta"
#change the title of session
qdbus org.kde.yakuake /yakuake/tabs org.kde.yakuake.setTabTitle $sess0 "idserver"

#create new tab for Pyrep
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
#get id of open session
sess0=`qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.activeSessionId`
#run command on active session
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "cd ~/robocomp/components/robocomp-giraff/pyrep/giraff"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "./run_beta.sh"
#change the title of session
qdbus org.kde.yakuake /yakuake/tabs org.kde.yakuake.setTabTitle $sess0 "PYREP"

#create new tab for rcnode
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
#get id of open session
sess0=`qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.activeSessionId`
#run command on active session
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "exec bash"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.runCommand "rcnode"
#change the title of session
qdbus org.kde.yakuake /yakuake/tabs org.kde.yakuake.setTabTitle $sess0 "RCNode"

