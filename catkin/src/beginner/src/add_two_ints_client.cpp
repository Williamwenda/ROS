/*************************************************************************
	> File Name: add_two_ints_client.cpp
	> Author: 
	> Mail: 
	> Created Time: Wed 15 Aug 2018 11:32:11 AM EDT
 ************************************************************************/

#include "ros/ros.h"
#include "beginner/AddTwoInts.h"
#include <cstdlib>

int main(int argc,char* argv[]){
    ros::init(argc,argv,"add_two_ints_client");
    if(argc!=3){
        ROS_INFO("usage:add_two_ints_client X Y");
        return 1;
    }
    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<beginner::AddTwoInts>("add_two");
    beginner::AddTwoInts srv;
    srv.request.a = atoll(argv[1]);
    srv.request.b = atoll(argv[2]);
    if(client.call(srv)){
        ROS_INFO("Sum:%ld",(long int)srv.response.sum);
    }else{
        ROS_ERROR("Failed to call service add_two_ints");
        return 1;
    }

    return 0;
}




