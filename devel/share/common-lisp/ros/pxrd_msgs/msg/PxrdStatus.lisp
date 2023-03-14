; Auto-generated. Do not edit!


(cl:in-package pxrd_msgs-msg)


;//! \htmlinclude PxrdStatus.msg.html

(cl:defclass <PxrdStatus> (roslisp-msg-protocol:ros-message)
  ((pxrd_status
    :reader pxrd_status
    :initarg :pxrd_status
    :type cl:integer
    :initform 0))
)

(cl:defclass PxrdStatus (<PxrdStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PxrdStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PxrdStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pxrd_msgs-msg:<PxrdStatus> is deprecated: use pxrd_msgs-msg:PxrdStatus instead.")))

(cl:ensure-generic-function 'pxrd_status-val :lambda-list '(m))
(cl:defmethod pxrd_status-val ((m <PxrdStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pxrd_msgs-msg:pxrd_status-val is deprecated.  Use pxrd_msgs-msg:pxrd_status instead.")
  (pxrd_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PxrdStatus>)))
    "Constants for message type '<PxrdStatus>"
  '((:NOT_LAUNCHED_YET . 0)
    (:PROGRAM_LAUNCHED . 1)
    (:TIME_STAMP_RECORDED . 2)
    (:EXECUTION_DONE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PxrdStatus)))
    "Constants for message type 'PxrdStatus"
  '((:NOT_LAUNCHED_YET . 0)
    (:PROGRAM_LAUNCHED . 1)
    (:TIME_STAMP_RECORDED . 2)
    (:EXECUTION_DONE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PxrdStatus>) ostream)
  "Serializes a message object of type '<PxrdStatus>"
  (cl:let* ((signed (cl:slot-value msg 'pxrd_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PxrdStatus>) istream)
  "Deserializes a message object of type '<PxrdStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pxrd_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PxrdStatus>)))
  "Returns string type for a message object of type '<PxrdStatus>"
  "pxrd_msgs/PxrdStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PxrdStatus)))
  "Returns string type for a message object of type 'PxrdStatus"
  "pxrd_msgs/PxrdStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PxrdStatus>)))
  "Returns md5sum for a message object of type '<PxrdStatus>"
  "96226aaf17e9633f8f7bdf2232d4611e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PxrdStatus)))
  "Returns md5sum for a message object of type 'PxrdStatus"
  "96226aaf17e9633f8f7bdf2232d4611e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PxrdStatus>)))
  "Returns full string definition for message of type '<PxrdStatus>"
  (cl:format cl:nil "int32 NOT_LAUNCHED_YET = 0~%int32 PROGRAM_LAUNCHED = 1~%int32 TIME_STAMP_RECORDED = 2~%int32 EXECUTION_DONE = 3~%~%int32 pxrd_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PxrdStatus)))
  "Returns full string definition for message of type 'PxrdStatus"
  (cl:format cl:nil "int32 NOT_LAUNCHED_YET = 0~%int32 PROGRAM_LAUNCHED = 1~%int32 TIME_STAMP_RECORDED = 2~%int32 EXECUTION_DONE = 3~%~%int32 pxrd_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PxrdStatus>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PxrdStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PxrdStatus
    (cl:cons ':pxrd_status (pxrd_status msg))
))
