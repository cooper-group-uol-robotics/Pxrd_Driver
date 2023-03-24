// Auto-generated. Do not edit!

// (in-package pxrd_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PxrdStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pxrd_status = null;
    }
    else {
      if (initObj.hasOwnProperty('pxrd_status')) {
        this.pxrd_status = initObj.pxrd_status
      }
      else {
        this.pxrd_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PxrdStatus
    // Serialize message field [pxrd_status]
    bufferOffset = _serializer.int32(obj.pxrd_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PxrdStatus
    let len;
    let data = new PxrdStatus(null);
    // Deserialize message field [pxrd_status]
    data.pxrd_status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pxrd_msgs/PxrdStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b92491773d58c099e9d91e9c34f664b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 NOT_LAUNCHED_YET = 1
    int32 EXECUTION_DONE = 2
    
    int32 pxrd_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PxrdStatus(null);
    if (msg.pxrd_status !== undefined) {
      resolved.pxrd_status = msg.pxrd_status;
    }
    else {
      resolved.pxrd_status = 0
    }

    return resolved;
    }
};

// Constants for message
PxrdStatus.Constants = {
  NOT_LAUNCHED_YET: 1,
  EXECUTION_DONE: 2,
}

module.exports = PxrdStatus;
