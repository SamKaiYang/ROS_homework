; Auto-generated. Do not edit!


(cl:in-package hello-srv)


;//! \htmlinclude service-request.msg.html

(cl:defclass <service-request> (roslisp-msg-protocol:ros-message)
  ((input_req1
    :reader input_req1
    :initarg :input_req1
    :type cl:integer
    :initform 0)
   (input_req2
    :reader input_req2
    :initarg :input_req2
    :type cl:float
    :initform 0.0))
)

(cl:defclass service-request (<service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello-srv:<service-request> is deprecated: use hello-srv:service-request instead.")))

(cl:ensure-generic-function 'input_req1-val :lambda-list '(m))
(cl:defmethod input_req1-val ((m <service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-srv:input_req1-val is deprecated.  Use hello-srv:input_req1 instead.")
  (input_req1 m))

(cl:ensure-generic-function 'input_req2-val :lambda-list '(m))
(cl:defmethod input_req2-val ((m <service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-srv:input_req2-val is deprecated.  Use hello-srv:input_req2 instead.")
  (input_req2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service-request>) ostream)
  "Serializes a message object of type '<service-request>"
  (cl:let* ((signed (cl:slot-value msg 'input_req1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'input_req2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service-request>) istream)
  "Deserializes a message object of type '<service-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_req1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'input_req2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service-request>)))
  "Returns string type for a service object of type '<service-request>"
  "hello/serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service-request)))
  "Returns string type for a service object of type 'service-request"
  "hello/serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service-request>)))
  "Returns md5sum for a message object of type '<service-request>"
  "95f338c03e3160910deaf2a8b3b2fb2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service-request)))
  "Returns md5sum for a message object of type 'service-request"
  "95f338c03e3160910deaf2a8b3b2fb2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service-request>)))
  "Returns full string definition for message of type '<service-request>"
  (cl:format cl:nil "int32 input_req1~%float32 input_req2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service-request)))
  "Returns full string definition for message of type 'service-request"
  (cl:format cl:nil "int32 input_req1~%float32 input_req2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'service-request
    (cl:cons ':input_req1 (input_req1 msg))
    (cl:cons ':input_req2 (input_req2 msg))
))
;//! \htmlinclude service-response.msg.html

(cl:defclass <service-response> (roslisp-msg-protocol:ros-message)
  ((output_res1
    :reader output_res1
    :initarg :output_res1
    :type cl:integer
    :initform 0)
   (outout_res2
    :reader outout_res2
    :initarg :outout_res2
    :type cl:integer
    :initform 0))
)

(cl:defclass service-response (<service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello-srv:<service-response> is deprecated: use hello-srv:service-response instead.")))

(cl:ensure-generic-function 'output_res1-val :lambda-list '(m))
(cl:defmethod output_res1-val ((m <service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-srv:output_res1-val is deprecated.  Use hello-srv:output_res1 instead.")
  (output_res1 m))

(cl:ensure-generic-function 'outout_res2-val :lambda-list '(m))
(cl:defmethod outout_res2-val ((m <service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello-srv:outout_res2-val is deprecated.  Use hello-srv:outout_res2 instead.")
  (outout_res2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service-response>) ostream)
  "Serializes a message object of type '<service-response>"
  (cl:let* ((signed (cl:slot-value msg 'output_res1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'outout_res2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service-response>) istream)
  "Deserializes a message object of type '<service-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output_res1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'outout_res2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service-response>)))
  "Returns string type for a service object of type '<service-response>"
  "hello/serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service-response)))
  "Returns string type for a service object of type 'service-response"
  "hello/serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service-response>)))
  "Returns md5sum for a message object of type '<service-response>"
  "95f338c03e3160910deaf2a8b3b2fb2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service-response)))
  "Returns md5sum for a message object of type 'service-response"
  "95f338c03e3160910deaf2a8b3b2fb2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service-response>)))
  "Returns full string definition for message of type '<service-response>"
  (cl:format cl:nil "int32 output_res1~%int32 outout_res2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service-response)))
  "Returns full string definition for message of type 'service-response"
  (cl:format cl:nil "int32 output_res1~%int32 outout_res2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'service-response
    (cl:cons ':output_res1 (output_res1 msg))
    (cl:cons ':outout_res2 (outout_res2 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'service)))
  'service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'service)))
  'service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service)))
  "Returns string type for a service object of type '<service>"
  "hello/service")