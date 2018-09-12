/*************************************************************************
	> File Name: anon.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun 09 Sep 2018 03:46:58 PM EDT
 ************************************************************************/

#include<ros/ros.h>

int main(int argc, char* argv[]){
    ros::init(argc,argv,"anon",ros::init_options::AnonymousName);
    ros::NodeHandle nh;
    ros::Rate rate(1);
    while(ros::ok()){
        ROS_INFO_STREAM("This message is from "<<ros::this_node::getName());
        rate.sleep();
    }
}








