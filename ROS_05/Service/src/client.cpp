#include <ros/ros.h>
#include "service/service.h"
#include <stdlib.h> 

int main(int argc, char** argv)
{
    ros::init(argc, argv, "pow_client"); //client node
    ros::NodeHandle nh;

    ros::ServiceClient client = nh.serviceClient<service::service>("server"); //"server" service name

    service::service srv;
    srv.request.val = atoll(argv[1]);//val is input name
    
    if(client.call(srv))//判斷是否讀取到input值 ＆送出給client
    {
        ROS_INFO("GET");
    }
    else
    {
        ROS_INFO("fail");
    }
    
    
}