/*************************************************************************
	> File Name: set_bg_color.cpp
	> Author: William
	> Mail: wenda.zhao@mail.utoronto.ca
	> Created Time: Tue 11 Sep 2018 12:37:24 PM EDT
 ************************************************************************/

#include<ros/ros.h>
#include<std_srvs/Empty.h>

int main(int argc,char* argv[]){
    ros::init(argc,argv,"set_bg_color");
    ros::NodeHandle nh;

    ros::service::waitForService("clear");

    ros::param::set("background_r", 255);
    ros::param::set("background_g", 0);
    ros::param::set("background_b", 0);

    ros::ServiceClient clearClient
      = nh.serviceClient<std_srvs::Empty>("/clear");
    std_srvs::Empty srv;
    clearClient.call(srv);
}






