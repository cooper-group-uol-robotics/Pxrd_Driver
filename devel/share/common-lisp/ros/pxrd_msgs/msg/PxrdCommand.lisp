; Auto-generated. Do not edit!


(cl:in-package pxrd_msgs-msg)


;//! \htmlinclude PxrdCommand.msg.html

(cl:defclass <PxrdCommand> (roslisp-msg-protocol:ros-message)
  ((pxrd_command
    :reader pxrd_command
    :initarg :pxrd_command
    :type cl:integer
    :initform 0))
)

(cl:defclass PxrdCommand (<PxrdCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PxrdCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PxrdCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pxrd_msgs-msg:<PxrdCommand> is deprecated: use pxrd_msgs-msg:PxrdCommand instead.")))

(cl:ensure-generic-function 'pxrd_command-val :lambda-list '(m))
(cl:defmethod pxrd_command-val ((m <PxrdCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pxrd_msgs-msg:pxrd_command-val is deprecated.  Use pxrd_msgs-msg:pxrd_command instead.")
  (pxrd_command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PxrdCommand>)))
    "Constants for message type '<PxrdCommand>"
  '((:LAUNCH_PROGRAM . 0)
    (:TAKE_TIME_STAMP . 1)
    (:EXECUTE . 2)
    (:TERMINATE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PxrdCommand)))
    "Constants for message type 'PxrdCommand"
  '((:LAUNCH_PROGRAM . 0)
    (:TAKE_TIME_STAMP . 1)
    (:EXECUTE . 2)
    (:TERMINATE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PxrdCommand>) ostream)
  "Serializes a message object of type '<PxrdCommand>"
  (cl:let* ((signed (cl:slot-value msg 'pxrd_command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PxrdCommand>) istream)
  "Deserializes a message object of type '<PxrdCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pxrd_command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PxrdCommand>)))
  "Returns string type for a message object of type '<PxrdCommand>"
  "pxrd_msgs/PxrdCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PxrdCommand)))
  "Returns string type for a message object of type 'PxrdCommand"
  "pxrd_msgs/PxrdCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PxrdCommand>)))
  "Returns md5sum for a message object of type '<PxrdCommand>"
  "f889a2e61012c7bf0f0f5017c5ade6c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PxrdCommand)))
  "Returns md5sum for a message object of type 'PxrdCommand"
  "f889a2e61012c7bf0f0f5017c5ade6c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PxrdCommand>)))
  "Returns full string definition for message of type '<PxrdCommand>"
  (cl:format cl:nil "int32 LAUNCH_PROGRAM = 0~%int32 TAKE_TIME_STAMP = 1~%int32 EXECUTE = 2~%int32 TERMINATE = 3~%~%int32 pxrd_command~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PxrdCommand)))
  "Returns full string definition for message of type 'PxrdCommand"
  (cl:format cl:nil "int32 LAUNCH_PROGRAM = 0~%int32 TAKE_TIME_STAMP = 1~%int32 EXECUTE = 2~%int32 TERMINATE = 3~%~%int32 pxrd_command~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PxrdCommand>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PxrdCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PxrdCommand
    (cl:cons ':pxrd_command (pxrd_command msg))
))
