/*************************************************************************
	> File Name: hello.cpp
	> Author: 
	> Mail: 
	> Created Time: Sat 08 Sep 2018 04:16:24 PM EDT
 ************************************************************************/

#include "ros/ros.h"

int main(int argc, char **argv){
// initialize the ROS system
    ros::init(argc, argv,"hello_ros");
// establish this program as a ROS node
    ros::NodeHandle nh;
    //send some output as a log message
    ROS_INFO_STREAM("Hello, DSL!!");
}


