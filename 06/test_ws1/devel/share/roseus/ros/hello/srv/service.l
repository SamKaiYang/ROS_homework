;; Auto-generated. Do not edit!


(when (boundp 'hello::service)
  (if (not (find-package "HELLO"))
    (make-package "HELLO"))
  (shadow 'service (find-package "HELLO")))
(unless (find-package "HELLO::SERVICE")
  (make-package "HELLO::SERVICE"))
(unless (find-package "HELLO::SERVICEREQUEST")
  (make-package "HELLO::SERVICEREQUEST"))
(unless (find-package "HELLO::SERVICERESPONSE")
  (make-package "HELLO::SERVICERESPONSE"))

(in-package "ROS")





(defclass hello::serviceRequest
  :super ros::object
  :slots (_input_req1 _input_req2 ))

(defmethod hello::serviceRequest
  (:init
   (&key
    ((:input_req1 __input_req1) 0)
    ((:input_req2 __input_req2) 0.0)
    )
   (send-super :init)
   (setq _input_req1 (round __input_req1))
   (setq _input_req2 (float __input_req2))
   self)
  (:input_req1
   (&optional __input_req1)
   (if __input_req1 (setq _input_req1 __input_req1)) _input_req1)
  (:input_req2
   (&optional __input_req2)
   (if __input_req2 (setq _input_req2 __input_req2)) _input_req2)
  (:serialization-length
   ()
   (+
    ;; int32 _input_req1
    4
    ;; float32 _input_req2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _input_req1
       (write-long _input_req1 s)
     ;; float32 _input_req2
       (sys::poke _input_req2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _input_req1
     (setq _input_req1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _input_req2
     (setq _input_req2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hello::serviceResponse
  :super ros::object
  :slots (_output_res1 _outout_res2 ))

(defmethod hello::serviceResponse
  (:init
   (&key
    ((:output_res1 __output_res1) 0)
    ((:outout_res2 __outout_res2) 0)
    )
   (send-super :init)
   (setq _output_res1 (round __output_res1))
   (setq _outout_res2 (round __outout_res2))
   self)
  (:output_res1
   (&optional __output_res1)
   (if __output_res1 (setq _output_res1 __output_res1)) _output_res1)
  (:outout_res2
   (&optional __outout_res2)
   (if __outout_res2 (setq _outout_res2 __outout_res2)) _outout_res2)
  (:serialization-length
   ()
   (+
    ;; int32 _output_res1
    4
    ;; int32 _outout_res2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _output_res1
       (write-long _output_res1 s)
     ;; int32 _outout_res2
       (write-long _outout_res2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _output_res1
     (setq _output_res1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _outout_res2
     (setq _outout_res2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hello::service
  :super ros::object
  :slots ())

(setf (get hello::service :md5sum-) "95f338c03e3160910deaf2a8b3b2fb2c")
(setf (get hello::service :datatype-) "hello/service")
(setf (get hello::service :request) hello::serviceRequest)
(setf (get hello::service :response) hello::serviceResponse)

(defmethod hello::serviceRequest
  (:response () (instance hello::serviceResponse :init)))

(setf (get hello::serviceRequest :md5sum-) "95f338c03e3160910deaf2a8b3b2fb2c")
(setf (get hello::serviceRequest :datatype-) "hello/serviceRequest")
(setf (get hello::serviceRequest :definition-)
      "int32 input_req1
float32 input_req2
---
int32 output_res1
int32 outout_res2

")

(setf (get hello::serviceResponse :md5sum-) "95f338c03e3160910deaf2a8b3b2fb2c")
(setf (get hello::serviceResponse :datatype-) "hello/serviceResponse")
(setf (get hello::serviceResponse :definition-)
      "int32 input_req1
float32 input_req2
---
int32 output_res1
int32 outout_res2

")



(provide :hello/service "95f338c03e3160910deaf2a8b3b2fb2c")


