#include<ros/ros.h>
#include<stdio.h>
#include<stdlib.h>
#include <std_srvs/Empty.h>

void set_bg_color(ros::NodeHandle NodeHandler, int r, int g, int b)
{
   // Please NOT add '~' if the parameter is a private parameter.
   NodeHandler.setParam("background_b", b);
   NodeHandler.setParam("background_g", g);
   NodeHandler.setParam("background_r", r);
}
int main( int argc, char ** argv )
{
   ros::init(argc, argv, "set_global_color_node");
   ros::NodeHandle nh;
   // Get the maximum velocity parameter .
   int r,g,b;

	// Please add '~' if the parameter is a private parameter.
   const std::string bg_r = "background_r" ;
   const std::string bg_g = "background_g" ;
   const std::string bg_b = "background_b" ;

   ros::service::waitForService("clear");      // wit for "clear" service
   
   // 輸出與載入設定好的參數
   system("rosparam load /home/luca/test_ws1/src/parameter/config/data.yaml");
   ros::param::get(bg_r, r);    ROS_INFO("bg_r = %d", r);
   ros::param::get(bg_g, g);    ROS_INFO("bg_g = %d", g);
   ros::param::get(bg_b, b);    ROS_INFO("bg_b = %d", b);
   set_bg_color(nh, r, g, b);                  // setting parameter

   // 宣告與呼叫service
   ros::ServiceClient clear_client = nh.serviceClient<std_srvs::Empty>("/clear");
   std_srvs::Empty srv;
   clear_client.call(srv);

}





