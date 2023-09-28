#!/usr/bin/env python

import rospy
from std_msgs.msg import Bool

def callback(msg):
    rospy.loginfo("Received: %s", msg.data)

if __name__ == '__main__':
    rospy.init_node('simple_listener', anonymous=True)
    rospy.Subscriber("land_trigger", Bool, callback)
    rospy.spin()
