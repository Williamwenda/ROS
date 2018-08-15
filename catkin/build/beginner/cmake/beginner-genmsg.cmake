# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "beginner: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ibeginner:/home/william/ROS/catkin/src/beginner/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(beginner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_beginner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner" "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/msg/Num.msg" NAME_WE)
add_custom_target(_beginner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner" "/home/william/ROS/catkin/src/beginner/msg/Num.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(beginner
  "/home/william/ROS/catkin/src/beginner/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner
)

### Generating Services
_generate_srv_cpp(beginner
  "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner
)

### Generating Module File
_generate_module_cpp(beginner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(beginner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(beginner_generate_messages beginner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(beginner_generate_messages_cpp _beginner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/msg/Num.msg" NAME_WE)
add_dependencies(beginner_generate_messages_cpp _beginner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_gencpp)
add_dependencies(beginner_gencpp beginner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(beginner
  "/home/william/ROS/catkin/src/beginner/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner
)

### Generating Services
_generate_srv_eus(beginner
  "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner
)

### Generating Module File
_generate_module_eus(beginner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(beginner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(beginner_generate_messages beginner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(beginner_generate_messages_eus _beginner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/msg/Num.msg" NAME_WE)
add_dependencies(beginner_generate_messages_eus _beginner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_geneus)
add_dependencies(beginner_geneus beginner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(beginner
  "/home/william/ROS/catkin/src/beginner/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner
)

### Generating Services
_generate_srv_lisp(beginner
  "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner
)

### Generating Module File
_generate_module_lisp(beginner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(beginner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(beginner_generate_messages beginner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(beginner_generate_messages_lisp _beginner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/msg/Num.msg" NAME_WE)
add_dependencies(beginner_generate_messages_lisp _beginner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_genlisp)
add_dependencies(beginner_genlisp beginner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(beginner
  "/home/william/ROS/catkin/src/beginner/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner
)

### Generating Services
_generate_srv_nodejs(beginner
  "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner
)

### Generating Module File
_generate_module_nodejs(beginner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(beginner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(beginner_generate_messages beginner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(beginner_generate_messages_nodejs _beginner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/msg/Num.msg" NAME_WE)
add_dependencies(beginner_generate_messages_nodejs _beginner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_gennodejs)
add_dependencies(beginner_gennodejs beginner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(beginner
  "/home/william/ROS/catkin/src/beginner/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner
)

### Generating Services
_generate_srv_py(beginner
  "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner
)

### Generating Module File
_generate_module_py(beginner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(beginner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(beginner_generate_messages beginner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(beginner_generate_messages_py _beginner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/william/ROS/catkin/src/beginner/msg/Num.msg" NAME_WE)
add_dependencies(beginner_generate_messages_py _beginner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_genpy)
add_dependencies(beginner_genpy beginner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(beginner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(beginner_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(beginner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(beginner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(beginner_generate_messages_py std_msgs_generate_messages_py)
endif()
