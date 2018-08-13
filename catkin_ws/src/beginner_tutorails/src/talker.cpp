/*************************************************************************
	> File Name: talker.cpp
	> Author: 
	> Mail: 
	> Created Time: Sun 12 Aug 2018 09:26:14 PM EDT
 ************************************************************************/

#include "ros/ros.h"
#include "std_msgs/String.h"

#include <sstream>

int main(int argc, char* argv[]){

    ros::init(argc,argv,"talker");

    ros::NodeHandle n;

    ros::Publisher chatter_pub=n.advertise<std_msgs::String>("chatter",1000);
    // "chatter" is the topic, "1000" is the size of the queue

    ros::Rate loop_rate(10);

    int count = 0;

    while(ros::ok()){
        /*
         * This is a message object. You stuff it with data, and then publish it.
        */
        std_msgs::String msg;

        std::stringstream ss;
        ss << "Hello ROS "<< count;
        msg.data = ss.str();

        ROS_INFO("%s",msg.data.c_str());

        chatter_pub.publish(msg);

        ros::spinOnce();

        loop_rate.sleep();
        ++count;


    }

    return 0;
}








