# CMake generated Testfile for 
# Source directory: /nWipro_ws/src/kuka_iontec_support
# Build directory: /nWipro_ws/build/kuka_iontec_support
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_test_kr_iontec.py "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/nWipro_ws/build/kuka_iontec_support/test_results/kuka_iontec_support/test_test_kr_iontec.py.xunit.xml" "--package-name" "kuka_iontec_support" "--output-file" "/nWipro_ws/build/kuka_iontec_support/launch_test/test_test_kr_iontec.py.txt" "--command" "/usr/bin/python3" "-m" "launch_testing.launch_test" "/nWipro_ws/src/kuka_iontec_support/test/test_kr_iontec.py" "--junit-xml=/nWipro_ws/build/kuka_iontec_support/test_results/kuka_iontec_support/test_test_kr_iontec.py.xunit.xml" "--package-name=kuka_iontec_support")
set_tests_properties(test_test_kr_iontec.py PROPERTIES  LABELS "launch_test" TIMEOUT "60" WORKING_DIRECTORY "/nWipro_ws/build/kuka_iontec_support" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/launch_testing_ament_cmake/cmake/add_launch_test.cmake;131;ament_add_test;/nWipro_ws/src/kuka_iontec_support/CMakeLists.txt;14;add_launch_test;/nWipro_ws/src/kuka_iontec_support/CMakeLists.txt;0;")
