#!/usr/bin/python3

#ROS driver for the PXRD Station
#Utilises ROS Topics to facilitate communication with robot
#Made by Satheeshkumar Veeramani 23/03/2022

import rospy 
from pxrd_msgs.msg import PxrdCommand, PxrdStatus
from pxrd_driver.pxrd_driver import PxrdDriver


class PxrdRos:
    def __init__(self):
        #init driver
        self._pxrd_driver = PxrdDriver()
        self._state = PxrdStatus.NOT_LAUNCHED_YET
        self._terminate_driver = False
        # init subscriber
        rospy.Subscriber("PXRD_commands", PxrdCommand, self.command_callback)
        #init publisher
        self.pub = rospy.Publisher("PXRD_status", PxrdStatus, queue_size=10)
        rate = rospy.Rate(1) #Initialize rate object for consistent timed looping
        rospy.loginfo("PXRD driver is started")
        while not rospy.is_shutdown(): #Whenever driver is running, loop each second polling all values and publishing them to topic
            self.pub.publish(PxrdStatus(self._state))
            if (self._terminate_driver):
                break
            rate.sleep()

    def command_callback(self, msg):
        if (msg.pxrd_command == PxrdCommand.EXECUTE):
            rospy.loginfo("execute")
            self.execution = self._pxrd_driver.execute()
            if self.execution == True:
                self._state = PxrdStatus.EXECUTION_DONE
        elif (msg.pxrd_command == PxrdCommand.TERMINATE):
            rospy.loginfo("terminate")
            self._terminate_driver = True
