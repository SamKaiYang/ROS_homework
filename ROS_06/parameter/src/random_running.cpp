// This program publishes randomly−generated velocity
// messages for turtlesim .
#include <ros/ros.h>
#include <geometry_msgs/Twist.h> // For geometry_msgs::Twist
#include <stdlib.h> // For rand() and RAND_MAX
int main ( int argc, char** argv ) 
{
	// Initialize the ROS system and become a node .
	ros::init ( argc, argv, "set_local_freq_node" ,ros::init_options::AnonymousName) ;
	ros::NodeHandle nh ;
	
	int f;

	const std::string rate_f = "~frequency" ;
	ros::service::waitForService("clear");      // wit for "clear" service
	// Create a publisher obj ect .
	ros::Publisher pub = nh.advertise <geometry_msgs::Twist >("turtle1/cmd_vel", 1000) ;
	
	// Seed the random number generator .
	srand (time(0));

	// Loop at 2Hz until the node is shut down.
	system("rosparam load /home/luca/test_ws1/src/parameter/config/data2.yaml");
    ros::param::get(rate_f, f);    ROS_INFO("rate_f = %d", f);
    nh.setParam("frequency",f);
    ros::Rate loop_rate(f);
	while ( ros::ok () ) 
	{
		// Create and fill in the message . The other four
		// fields , which are ignored by turtl esim , default to 0.
		geometry_msgs::Twist msg ;
		msg.linear.x = double ( rand()) / double(RAND_MAX);
		msg.angular.z = 2 * double ( rand() )/double(RAND_MAX)-1 ;

		// Publish the message .
		pub.publish ( msg ) ;

		// Send a message to rosout with the details .
		//ROS_INFO_STREAM( "Sending random velocity command : "
		//<< " linear=" << msg.linear.x
		//<< " angular=" << msg.angular.z) ;

		// Wait untilit's time for another iteration .
		loop_rate.sleep();
	}
}
