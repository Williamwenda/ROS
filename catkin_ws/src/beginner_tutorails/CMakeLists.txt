cmake_minimum_required(VERSION 2.8.3)
project(beginner_tutorails)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  genmsg
)


 add_message_files(
   FILES
   Num.msg
 )

 add_service_files(
   FILES
   AddTwoInts.srv
 )


 generate_messages(
   DEPENDENCIES
   std_msgs
 )


catkin_package(
   CATKIN_DEPENDS message_runtime
)


include_directories( include  ${catkin_INCLUDE_DIRS} )

add_executable(talker src/talker.cpp)
target_link_libraries(talker ${catkin_LIBRARIES})
add_dependencies(talker beginner_tutorails_generate_messages_cpp)

add_executable(listener src/listener.cpp)
target_link_libraries(listener ${catkin_LIBRARIES})
add_dependencies(listener beginner_tutorails_generate_messages_cpp)



