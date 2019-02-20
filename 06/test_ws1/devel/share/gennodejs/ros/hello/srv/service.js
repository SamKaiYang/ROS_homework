// Auto-generated. Do not edit!

// (in-package hello.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_req1 = null;
      this.input_req2 = null;
    }
    else {
      if (initObj.hasOwnProperty('input_req1')) {
        this.input_req1 = initObj.input_req1
      }
      else {
        this.input_req1 = 0;
      }
      if (initObj.hasOwnProperty('input_req2')) {
        this.input_req2 = initObj.input_req2
      }
      else {
        this.input_req2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type serviceRequest
    // Serialize message field [input_req1]
    bufferOffset = _serializer.int32(obj.input_req1, buffer, bufferOffset);
    // Serialize message field [input_req2]
    bufferOffset = _serializer.float32(obj.input_req2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type serviceRequest
    let len;
    let data = new serviceRequest(null);
    // Deserialize message field [input_req1]
    data.input_req1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [input_req2]
    data.input_req2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hello/serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03f75188953b9a3a4c297b467ba17420';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 input_req1
    float32 input_req2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new serviceRequest(null);
    if (msg.input_req1 !== undefined) {
      resolved.input_req1 = msg.input_req1;
    }
    else {
      resolved.input_req1 = 0
    }

    if (msg.input_req2 !== undefined) {
      resolved.input_req2 = msg.input_req2;
    }
    else {
      resolved.input_req2 = 0.0
    }

    return resolved;
    }
};

class serviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_res1 = null;
      this.outout_res2 = null;
    }
    else {
      if (initObj.hasOwnProperty('output_res1')) {
        this.output_res1 = initObj.output_res1
      }
      else {
        this.output_res1 = 0;
      }
      if (initObj.hasOwnProperty('outout_res2')) {
        this.outout_res2 = initObj.outout_res2
      }
      else {
        this.outout_res2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type serviceResponse
    // Serialize message field [output_res1]
    bufferOffset = _serializer.int32(obj.output_res1, buffer, bufferOffset);
    // Serialize message field [outout_res2]
    bufferOffset = _serializer.int32(obj.outout_res2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type serviceResponse
    let len;
    let data = new serviceResponse(null);
    // Deserialize message field [output_res1]
    data.output_res1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [outout_res2]
    data.outout_res2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hello/serviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ed2aac0cbe0c2dcea81d62a239d7ad9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 output_res1
    int32 outout_res2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new serviceResponse(null);
    if (msg.output_res1 !== undefined) {
      resolved.output_res1 = msg.output_res1;
    }
    else {
      resolved.output_res1 = 0
    }

    if (msg.outout_res2 !== undefined) {
      resolved.outout_res2 = msg.outout_res2;
    }
    else {
      resolved.outout_res2 = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: serviceRequest,
  Response: serviceResponse,
  md5sum() { return '95f338c03e3160910deaf2a8b3b2fb2c'; },
  datatype() { return 'hello/service'; }
};
