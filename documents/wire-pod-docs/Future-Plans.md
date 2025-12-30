This page contains the features I am currently working on or thinking about adding. This includes little enhancements as well. There is also a section which contains features which cannot/will not be added due to limitations of the robot firmware or because they are out of wire-pod's scope.

# Planned Features

* **More Lua functions for custom intents**
  - Such as: showing an image on screen, playing a sound. Source could be a URL or a local file
     - Give each command a little, protected file system?
* **Auto-updater**
* **A seperate API configurator**
  - APIs credentials should be entered in their own section, then there could be a seperate section for choosing which APIs to use for certain things. For example, it would let you use OpenAI for intent-graph and Houndify for Knowledge Graph
* **A Pi image for wire-pod**
  - This isn't a wire-pod feature, but I thought I'd add it here. I am working on a Raspberry Pi 4/5-specific Linux image which includes wire-pod. It will make the Pi act as its own Wi-Fi access point while also being able to connect to a regular Wi-Fi network. A new WirePod network will appear which Vector will connect to. It has everything configured correctly so there is no reason Vector wouldn't be able to authenticate.

## Planned enhancements

* A better control page
  - More smooth controls (akin to the remote-control.py SDK example)
  - On-page buttons for mobile users
* A better setup experience
  - Something akin to [Rebble's setup guide](https://help.rebble.io/setup/)
  - Step-by-step, customized for each OS and if your bot is unlocked or not

# Things which ***cannot*** be added

* Custom wake words
  - "Hey Vector" recognition is built in to the robot and cannot be changed.
* Longer time before time-out
  - Built in to the robot firmware.
* Ability to run on different ports/with something other than `escapepod.local`
  - Again, this is built in to the robot firmware and cannot be changed. wire-pod does not apply a "custom" firmware to the bot. Custom OTAs are not possible due to code signing. I am just using a DDL Escape Pod OTA which I am taking advantage of. The only differences in this OTA compared to normal Vector software are the server endpoints.



