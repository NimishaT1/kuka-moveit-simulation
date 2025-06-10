# kuka-moveit-simulation
This is a simulation of the kuka industrial robotic arm in MoveIt using ROS2 Humble.<br>
The URDF for kuka industrial bots for ros2 humble can be found here: https://github.com/kroshu/kuka_robot_descriptions/tree/humble

[KukaSim.webm](https://github.com/user-attachments/assets/a73a34d7-8b59-47d0-8d66-34a75207b97f)

# Run the simulation
1. Clone this repo into your workspace <br><br>
2. Install MoveIt using `sudo apt install ros-humble-moveit` <br><br>
3. Build the package using `colcon build` in the workspace. <br><br>
4. Source ros2 and moveit using `source /opt/ros/humble/setup.bash` and `source install/setup.bash` in the workspace directory.<br><br>
5. Run `ros2 launch kuka_moveit_config demo.launch.py` which opens up rviz and shows the simulation of the robotic arm.<br>
# Plan your own path for the arm
To plan you own motion of the arm, follow these:<br><br>
1. Follow the first 4 steps above. Then<br><br>
2. Run `ros2 launch moveit_setup_assistant setup_assistant.launch.py` This launches the moveit setup assistant wizard. <br><br>
3. Go to the robot poses section and tweak the inital and final states of the joints as necessary. Then generate the config files again, ensure all the files are ticked. <br><br>
4. Now, build the package again in your workspace using `colcon build`<br><br>
5. Run `ros2 launch kuka_moveit_config demo.launch.py` which opens up rviz and shows the simulation of the robotic arm.<br>
# Note
Add these two lines to the moveit_controllers.yaml file: <br>
`action_ns: follow_joint_trajectory` <br>
`default: true` 

