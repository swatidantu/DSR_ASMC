# Self-Adaptive Controllers for Path Following

### GSOC 2022 with Robocomp

## Table of Contents

- Robocomp Installation Instructions
- Usage
- Control Law Explanation(Blog)

## Robocomp Installation Instructions

- Install the [robocomp framework](https://github.com/robocomp/robocomp)
- Install [Coppelia Robotics](https://www.coppeliarobotics.com/)
- Install [Pyrep](https://github.com/stepjam/PyRep)
- Install [cortex](https://github.com/robocomp/cortex)
- Install [Robocomp Components](https://github.com/robocomp/dsr-graph)
- Install [Robocomp Giraff Components](https://github.com/robocomp/robocomp-giraff). Detailed Instructions [here](https://github.com/robocomp/robocomp-giraff/tree/main/pyrep/giraff)

## Usage 
### For any component

To set up cpp binaries:
```
cd <path-to-the-component>
cmake .
make
```
### To run the ASMC path follower

Terminal 1: Start rcnode

```
rcnode
```
Terminal 2: Launch Coppellia Sim using Pyrep. Different maps can be choosen here by using different shell scripts.

```
cd ~/robocomp/components/robocomp-giraff/pyrep/giraff
./run_beta.sh
```
Terminal 3: Launch ID Server
```
cd ~/robocomp/components/dsr-graph/components/idserver
bin/idserver etc/config_giraff_beta
```
Terminal 4: Launch Giraff DSR
```
cd ~/robocomp/components/dsr-graph/components/giraff_dsr
bin/giraff_dsr etc/config_coppelia
```
Terminal 5: Launch Mission Controller
```
cd ~/robocomp/components/robocomp-giraff/agentes/mission_controller_giraff_mod
bin/mission_controller_giraff etc/config
```
Terminal 6: Launch path planner A-star
```
cd ~/robocomp/components/dsr-graph/components/path_planner_astar
bin/path_planner_astar etc/config_giraff_beta
```
Terminal 7: Launch path follower ASMC
```
cd ~/robocomp/components/dsr-graph/components/path_follower_ASMC/
bin/path_follower_ASMC etc/config_giraff_ASMC
```

All these could be run using a yakuake script named ```start_giraff.sh```

To install yakuake

```
sudo apt-get update
sudo apt-get -y install yakuake
```

To give a waypoint to giraff to move: 

- In the mission controller UI, choose the ``` Giraff Plan Controller``` 
- Choose ``` go to x ``` option from the dropdown menu
- Choose the waypoint by right clicking on the map and click start

## Blog

The detailed explaination of the the control law could be found [here](https://robocomp.github.io/web/gsoc/2022/posts/index)


