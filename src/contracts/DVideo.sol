// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.0 <0.9.0;

// 1. model video
// 2. store video
// 3. upload video
// 4. list all videos

contract DVideo {
  uint public videoCount = 0;
  string public name = "DVideo";
  // -- stores videos and lists videos -- says hey keep a uint # for each Video created in the struct to create an array
  //Create id=>struct mapping
  mapping(uint => Video) public videos;

  // -- model video -- 
  // Create Struct
  struct Video {
    uint id;
    string hash;
    string title;
    address author;
  }

  //Create Event
  // lets us return info when it was triggered
  event VideoUploaded(
    uint id,
    string hash,
    string title,
    address author
  );

  constructor() public {
    
  }

  function uploadVideo(string memory _videoHash, string memory _title) public {
    // Make sure the video hash exists
    // the byte code of that arg > 0
    require(bytes(_videoHash).length > 0);

    // Make sure video title exists
    require(bytes(_title).length > 0);

    // Make sure uploader address exists
    require(msg.sender != address(0));  

    // Increment video id
    videoCount ++;

    // Add video to the contract
    // each arg is each info in the struct arg videoCount = index
    videos[videoCount] = Video(videoCount, _videoHash, _title, msg.sender);

    // Trigger an event
    emit VideoUploaded(videoCount, _videoHash, _title, msg.sender);

  }
}
