#include <cstdio>
#include <rclcpp/rclcpp.hpp>
#include "sensor_msgs/msg/joint_state.hpp"


class KukaRobot : public rclcpp::Node{
  public:
    KukaRobot():Node("kuka_robot"){
      kuka_pub = this->create_publisher<sensor_msgs::msg::JointState>("joint_command", 10);

      joint_message = sensor_msgs::msg::JointState();
      joint_message.name = {"joint_a1", "joint_a2", "joint_a3", "joint_a4", "joint_a5", "joint_a6"};
      joint_message.position = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
      joint_message.velocity = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0};


      step = 20;
      frequency = 1;
      amplitude = 1;

      timer_ = this->create_wall_timer(
        std::chrono::milliseconds(20),
        std::bind(&KukaRobot::jointCallback, this)
      );
    }

    void jointCallback(){
      // RCLCPP_INFO(this->get_logger(), "Timer event");
      target_position = sin(2 * M_PI * frequency * time);

      for(double &pos : joint_message.position){
        pos = target_position;
      }

      kuka_pub->publish(joint_message);

      time += step/1000.0;
    }

  private:
    double frequency, time, step, amplitude, target_position, target_velocity;
    rclcpp::Publisher<sensor_msgs::msg::JointState>::SharedPtr kuka_pub;
    rclcpp::TimerBase::SharedPtr timer_;
    sensor_msgs::msg::JointState joint_message;

};


int main(int argc, char ** argv)
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<KukaRobot>());
  rclcpp::shutdown();
  return 0;
}
