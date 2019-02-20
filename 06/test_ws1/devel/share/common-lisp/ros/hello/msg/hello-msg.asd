
(cl:in-package :asdf)

(defsystem "hello-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "turtle_cmd" :depends-on ("_package_turtle_cmd"))
    (:file "_package_turtle_cmd" :depends-on ("_package"))
  ))