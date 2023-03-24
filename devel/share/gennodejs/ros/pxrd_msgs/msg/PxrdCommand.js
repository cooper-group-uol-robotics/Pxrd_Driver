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

class PxrdCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pxrd_command = null;
    }
    else {
      if (initObj.hasOwnProperty('pxrd_command')) {
        this.pxrd_command = initObj.pxrd_command
      }
      else {
        this.pxrd_command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PxrdCommand
    // Serialize message field [pxrd_command]
    bufferOffset = _serializer.int32(obj.pxrd_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PxrdCommand
    let len;
    let data = new PxrdCommand(null);
    // Deserialize message field [pxrd_command]
    data.pxrd_command = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pxrd_msgs/PxrdCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df37655a3b1b4dee201d72126c552a65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 EXECUTE = 1
    int32 TERMINATE = 2
    
    int32 pxrd_command
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PxrdCommand(null);
    if (msg.pxrd_command !== undefined) {
      resolved.pxrd_command = msg.pxrd_command;
    }
    else {
      resolved.pxrd_command = 0
    }

    return resolved;
    }
};

// Constants for message
PxrdCommand.Constants = {
  EXECUTE: 1,
  TERMINATE: 2,
}

module.exports = PxrdCommand;
