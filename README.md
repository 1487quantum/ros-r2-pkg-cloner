# ros-r2-pkg-clonner
A simple Bash script to download the required packages used in the r2 humanoid robot as defined in the public_sim file from the r2_workspaces/trusty_indigo directory of [nasa-jsc-robotics](https://gitlab.com/nasa-jsc-robotics/) in GitLab. 

This script is written so that one does not have to setup the SSH keys required to download the repositories mentioned in the [nasa-jsc-robotics setup guide]( https://gitlab.com/nasa-jsc-robotics/robonaut2/wikis/R2%20Gazebo%20Simulation#workspace).

><b>Do not mistaken this for the pr2 robot!</b>

##Target
The clonner is only meant for the following ubuntu & ROS version:
- Ubuntu 14.04
- ROS Indigo

##Using the clonner
- Git clone the repo
```
git clone https://github.com/1487quantum/ros-r2-pkg-clonner
```
- Change the permission of the script to excecutable
```
chmod +x getPkg.sh
```
- Run it!
```
./getPkg.sh
```
