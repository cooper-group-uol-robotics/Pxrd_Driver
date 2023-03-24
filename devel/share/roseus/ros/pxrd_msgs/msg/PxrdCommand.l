;; Auto-generated. Do not edit!


(when (boundp 'pxrd_msgs::PxrdCommand)
  (if (not (find-package "PXRD_MSGS"))
    (make-package "PXRD_MSGS"))
  (shadow 'PxrdCommand (find-package "PXRD_MSGS")))
(unless (find-package "PXRD_MSGS::PXRDCOMMAND")
  (make-package "PXRD_MSGS::PXRDCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PxrdCommand.msg.html


(intern "*EXECUTE*" (find-package "PXRD_MSGS::PXRDCOMMAND"))
(shadow '*EXECUTE* (find-package "PXRD_MSGS::PXRDCOMMAND"))
(defconstant pxrd_msgs::PxrdCommand::*EXECUTE* 1)
(intern "*TERMINATE*" (find-package "PXRD_MSGS::PXRDCOMMAND"))
(shadow '*TERMINATE* (find-package "PXRD_MSGS::PXRDCOMMAND"))
(defconstant pxrd_msgs::PxrdCommand::*TERMINATE* 2)

(defun pxrd_msgs::PxrdCommand-to-symbol (const)
  (cond
        ((= const 1) 'pxrd_msgs::PxrdCommand::*EXECUTE*)
        ((= const 2) 'pxrd_msgs::PxrdCommand::*TERMINATE*)
        (t nil)))

(defclass pxrd_msgs::PxrdCommand
  :super ros::object
  :slots (_pxrd_command ))

(defmethod pxrd_msgs::PxrdCommand
  (:init
   (&key
    ((:pxrd_command __pxrd_command) 0)
    )
   (send-super :init)
   (setq _pxrd_command (round __pxrd_command))
   self)
  (:pxrd_command
   (&optional __pxrd_command)
   (if __pxrd_command (setq _pxrd_command __pxrd_command)) _pxrd_command)
  (:serialization-length
   ()
   (+
    ;; int32 _pxrd_command
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pxrd_command
       (write-long _pxrd_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pxrd_command
     (setq _pxrd_command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pxrd_msgs::PxrdCommand :md5sum-) "df37655a3b1b4dee201d72126c552a65")
(setf (get pxrd_msgs::PxrdCommand :datatype-) "pxrd_msgs/PxrdCommand")
(setf (get pxrd_msgs::PxrdCommand :definition-)
      "int32 EXECUTE = 1
int32 TERMINATE = 2

int32 pxrd_command
")



(provide :pxrd_msgs/PxrdCommand "df37655a3b1b4dee201d72126c552a65")


