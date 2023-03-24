execute_process(COMMAND "/home/satheesh/Pxrd_Driver/build/pxrd_driver/pxrd_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/satheesh/Pxrd_Driver/build/pxrd_driver/pxrd_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
