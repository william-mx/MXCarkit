FROM dustynv/ros:melodic-ros-base-l4t-r32.4.4

RUN apt-get update \
 && apt-get install --yes \
    ros-$ROS_DISTRO-tf \
    ros-$ROS_DISTRO-serial \
    ros-$ROS_DISTRO-rosserial \
    ros-$ROS_DISTRO-rosserial-python \
    ros-$ROS_DISTRO-ackermann-msgs \
    ros-$ROS_DISTRO-rplidar-ros \
    ros-$ROS_DISTRO-image-view \
    ros-$ROS_DISTRO-rqt \
    ros-$ROS_DISTRO-rqt-common-plugins \
    ros-$ROS_DISTRO-joy \
    ros-$ROS_DISTRO-realsense2-camera

WORKDIR ./catkin_ws

RUN . /opt/ros/melodic/setup.sh 



