/*************************************************************************
	> File Name: listener.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun 12 Aug 2018 10:56:43 PM EDT
 ************************************************************************/

#include "ros/ros.h"
#include "std_msgs/String.h"

void chatterCallback(const std_msgs::String::ConstPtr& msg){
    ROS_INFO("I heard:[%s]",msg->data.c_str());
}

int main(int argc, char* argv[]){

    ros::init(argc,argv,"listener");

    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe("chatter",1000,chatterCallback);
    //when receive message call the callback function "chatterCallback"

    ros::spin();

    return 0;
}


