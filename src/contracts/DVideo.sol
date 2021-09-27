// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.0 <0.9.0;

// 1. model video
// 2. store video
// 3. upload video
// 4. list all videos

contract DVideo {
  uint public videoCount = 0;
  string public name = "DVideo";
  //Create id=>struct mapping

  //Create Struct


  //Create Event


  constructor() {}

  function uploadVideo(string memory _videoHash, string memory _title) public {
    // Make sure the video hash exists

    // Make sure video title exists

    // Make sure uploader address exists


    // Increment video id

    // Add video to the contract

    // Trigger an event

  }
}
