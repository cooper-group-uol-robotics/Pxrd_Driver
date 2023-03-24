;; Auto-generated. Do not edit!


(when (boundp 'pxrd_msgs::PxrdStatus)
  (if (not (find-package "PXRD_MSGS"))
    (make-package "PXRD_MSGS"))
  (shadow 'PxrdStatus (find-package "PXRD_MSGS")))
(unless (find-package "PXRD_MSGS::PXRDSTATUS")
  (make-package "PXRD_MSGS::PXRDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PxrdStatus.msg.html


(intern "*NOT_LAUNCHED_YET*" (find-package "PXRD_MSGS::PXRDSTATUS"))
(shadow '*NOT_LAUNCHED_YET* (find-package "PXRD_MSGS::PXRDSTATUS"))
(defconstant pxrd_msgs::PxrdStatus::*NOT_LAUNCHED_YET* 1)
(intern "*EXECUTION_DONE*" (find-package "PXRD_MSGS::PXRDSTATUS"))
(shadow '*EXECUTION_DONE* (find-package "PXRD_MSGS::PXRDSTATUS"))
(defconstant pxrd_msgs::PxrdStatus::*EXECUTION_DONE* 2)

(defun pxrd_msgs::PxrdStatus-to-symbol (const)
  (cond
        ((= const 1) 'pxrd_msgs::PxrdStatus::*NOT_LAUNCHED_YET*)
        ((= const 2) 'pxrd_msgs::PxrdStatus::*EXECUTION_DONE*)
        (t nil)))

(defclass pxrd_msgs::PxrdStatus
  :super ros::object
  :slots (_pxrd_status ))

(defmethod pxrd_msgs::PxrdStatus
  (:init
   (&key
    ((:pxrd_status __pxrd_status) 0)
    )
   (send-super :init)
   (setq _pxrd_status (round __pxrd_status))
   self)
  (:pxrd_status
   (&optional __pxrd_status)
   (if __pxrd_status (setq _pxrd_status __pxrd_status)) _pxrd_status)
  (:serialization-length
   ()
   (+
    ;; int32 _pxrd_status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pxrd_status
       (write-long _pxrd_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pxrd_status
     (setq _pxrd_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pxrd_msgs::PxrdStatus :md5sum-) "b92491773d58c099e9d91e9c34f664b0")
(setf (get pxrd_msgs::PxrdStatus :datatype-) "pxrd_msgs/PxrdStatus")
(setf (get pxrd_msgs::PxrdStatus :definition-)
      "int32 NOT_LAUNCHED_YET = 1
int32 EXECUTION_DONE = 2

int32 pxrd_status

")



(provide :pxrd_msgs/PxrdStatus "b92491773d58c099e9d91e9c34f664b0")


