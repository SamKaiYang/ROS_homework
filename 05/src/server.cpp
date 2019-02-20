#include <ros/ros.h>
#include "service/service.h"
#include <stdlib.h> 

int cal_pow(int number) //計算平方
{
    return number*number;
}
bool service_resquest(service::service::Request &req,service::service::Response &res)  //接收service
{
    ROS_INFO("Resquest Num = %d",req.val);
    res.ans = cal_pow(req.val);
    ROS_INFO("Respone: %d is pow",(res.ans));

    return true;
}    
int main(int argc, char** argv)
{
    ros::init(argc, argv, "pow_service");//service node
    ros::NodeHandle nh;
    //service service.cpp node name //service_resquest is Call_back function
    ros::ServiceServer service = nh.advertiseService("server",service_resquest);
    

    ros::spin();
    return 0;
}
