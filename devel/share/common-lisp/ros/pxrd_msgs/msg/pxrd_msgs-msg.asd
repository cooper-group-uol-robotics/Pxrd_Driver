
(cl:in-package :asdf)

(defsystem "pxrd_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PxrdCommand" :depends-on ("_package_PxrdCommand"))
    (:file "_package_PxrdCommand" :depends-on ("_package"))
    (:file "PxrdStatus" :depends-on ("_package_PxrdStatus"))
    (:file "_package_PxrdStatus" :depends-on ("_package"))
  ))