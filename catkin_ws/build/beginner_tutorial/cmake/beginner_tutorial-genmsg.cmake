# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "beginner_tutorial: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ibeginner_tutorial:/home/ping128/ros-ai/catkin_ws/src/beginner_tutorial/msg;-Istd_msgs:/opt/ros/groovy/share/std_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

#better way to handle this?
set (ALL_GEN_OUTPUT_FILES_cpp "")

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(beginner_tutorial
  /home/ping128/ros-ai/catkin_ws/src/beginner_tutorial/msg/Num.msg
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorial
)

### Generating Services
_generate_srv_cpp(beginner_tutorial
  /home/ping128/ros-ai/catkin_ws/src/beginner_tutorial/srv/AddTwoInts.srv
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorial
)

### Generating Module File
_generate_module_cpp(beginner_tutorial
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorial
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(beginner_tutorial_gencpp ALL
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(beginner_tutorial
  /home/ping128/ros-ai/catkin_ws/src/beginner_tutorial/msg/Num.msg
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorial
)

### Generating Services
_generate_srv_lisp(beginner_tutorial
  /home/ping128/ros-ai/catkin_ws/src/beginner_tutorial/srv/AddTwoInts.srv
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorial
)

### Generating Module File
_generate_module_lisp(beginner_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorial
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(beginner_tutorial_genlisp ALL
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(beginner_tutorial
  /home/ping128/ros-ai/catkin_ws/src/beginner_tutorial/msg/Num.msg
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorial
)

### Generating Services
_generate_srv_py(beginner_tutorial
  /home/ping128/ros-ai/catkin_ws/src/beginner_tutorial/srv/AddTwoInts.srv
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorial
)

### Generating Module File
_generate_module_py(beginner_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorial
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(beginner_tutorial_genpy ALL
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)


debug_message(2 "beginner_tutorial: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorial
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(beginner_tutorial_gencpp std_msgs_gencpp)

if(genlisp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorial
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(beginner_tutorial_genlisp std_msgs_genlisp)

if(genpy_INSTALL_DIR)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorial\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorial
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(beginner_tutorial_genpy std_msgs_genpy)
