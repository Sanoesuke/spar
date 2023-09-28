#!/bin/sh

# Define Global Variables
#rosPackage=tapir
drone0X=0.0
drone0Y=-1.0
drone0Z=0.05

drone1X=0.0
drone1Y=0.0
drone1Z=0.05

## Move UAV to start position
argsMoveDrone0="{model_state: { model_name: UAV0, pose: { position: { x: $drone0X, y: $drone0Y, z: $drone0Z }, orientation: {x: 0.0, y: 0.0, z: 0.0, w: 0.0 } }, twist: { linear: {x: 0.0 , y: 0 ,z: 0 } , angular: { x: 0.0 , y: 0 , z: 0.0 } } , reference_frame: world } }"

argsMoveDrone1="{model_state: { model_name: UAV1, pose: { position: { x: $drone1X, y: $drone1Y, z: $drone1Z }, orientation: {x: 0.0, y: 0.0, z: 0.0, w: 0.0 } }, twist: { linear: {x: 0.0 , y: 0 ,z: 0 } , angular: { x: 0.0 , y: 0 , z: 0.0 } } , reference_frame: world } }"

## Send command to terminal
command rosservice call /gazebo/set_model_state "$argsMoveDrone0" 

command rosservice call /gazebo/set_model_state "$argsMoveDrone1" 

echo "Wait 3 seconds to MAVROS to sync new robot location ...";
