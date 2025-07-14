```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EcoCipher {
    struct Device {
        string deviceId;
        string status;
        uint256 timestamp;
    }

    mapping(string => Device) public devices;

    function logPickup(string memory _deviceId, string memory _status) public {
        devices[_deviceId] = Device(_deviceId, _status, block.timestamp);
    }

    function getDevice(string memory _deviceId) public view returns (string memory, string memory, uint256) {
        Device memory d = devices[_deviceId];
        return (d.deviceId, d.status, d.timestamp);
    }
}
```

---