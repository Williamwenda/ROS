/*************************************************************************
	> File Name: add_two_ints_server.cpp
	> Author: 
	> Mail: 
	> Created Time: Wed 15 Aug 2018 11:25:27 AM EDT
 ************************************************************************/

#include "ros/ros.h"
#include "beginner/AddTwoInts.h"

bool add(beginner::AddTwoInts::Request &req,
         beginner::AddTwoInts::Response &res)
{
    res.sum = req.a + req.b;
    ROS_INFO("request: x=%ld, y=%ld",(long int)req.a,(long int)req.b);
    ROS_INFO("sending back response:[%ld]",(long int)res.sum);
    return true;
}

int main(int argc, char* argv[]){
    ros::init(argc,argv,"add_two_ints_server");
    ros::NodeHandle n;

    ros::ServiceServer service = n.advertiseService("add_two",add);
    ROS_INFO("It is ready to add two ints: ");
    ros::spin();

    return 0;
}


