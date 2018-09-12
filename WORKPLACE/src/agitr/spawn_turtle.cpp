/*************************************************************************
	> File Name: spawn_turtle.cpp
	> Author: William
	> Mail: 
	> Created Time: Tue 11 Sep 2018 02:29:06 PM EDT
 ************************************************************************/

#include<ros/ros.h>

//The srv class for the service
#include<turtlesim/Spawn.h>

int main(int argc, char* argv[]){
    ros::init(argc,argv,"spawn_turtle");
    ros::NodeHandle nh;
//Create a client object for the spawn service.
    ros::ServiceClient spawnClient
     = nh.serviceClient<turtlesim::Spawn>("spawn");
//Create the request and response objects
    turtlesim::Spawn::Request req;
    turtlesim::Spawn::Response resp;
//Fill in the request data members
    req.x=2;
    req.y=3;
    req.theta=M_PI/2;
    req.name="Leo";
//Actually call the service. This won't return until the 
//service is complete.
    bool success = spawnClient.call(req,resp);

//Check for success and use the response.
    if(success){
        ROS_INFO_STREAM("Spawned a turtle named "<<resp.name);
    }else{
        ROS_ERROR_STREAM("Failed to spawn. ");
    }

}






