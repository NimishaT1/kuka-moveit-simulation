cmake_minimum_required(VERSION 3.5)

project(kuka_iontec_support)

find_package(ament_cmake REQUIRED)
find_package(urdf REQUIRED)
find_package(xacro REQUIRED)

install(DIRECTORY config launch meshes urdf
  DESTINATION share/${PROJECT_NAME})

  if(BUILD_TESTING)
  find_package(launch_testing_ament_cmake)
  add_launch_test(test/test_kr_iontec.py)
endif()

ament_package()
