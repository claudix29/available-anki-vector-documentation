***TODO: Expand this page. Contributions would be helpful!!***

wire-pod has support for custom commands (aka. custom intents). These can be added in wire-pod's web interface.

## How they work

You enter a name and description for your custom command, a list of "utterances" which will activate this command, then an intent which you'd like it to match. If you are going to be taking behavior control of the robot via the SDK rather than matching to an intent, you can just use "intent_greeting_hello". If the intent requires a parameter, you can enter one.

Required: name, description, utterances, intent

Utterances don't have to be an exact match to what the user says. wire-pod checks if the transcribed text contains any one of the utterances you enter.

## Examples

### Simple intent definition
- "I just want to make an intent be understood by another set of utterances."
  - ![custom-intent-1](https://raw.githubusercontent.com/kercre123/wire-pod/main/images/custom-intent-1.png)
- "I want my Vector to tell me the date when asked."
  - ![custom-intent-2](https://raw.githubusercontent.com/kercre123/wire-pod/main/images/custom-intent-2.png)

## Lua documentation

wire-pod uses [gopher-lua](https://github.com/yuin/gopher-lua) with extra [libraries](https://github.com/vadv/gopher-lua-libs) which give you more freedom.

Right now, only 4 robot-interface functions are implemented:

```
assumeBehaviorControl(level int)
sayText(textToSay string)
playAnimation(animationToPlay string)
releaseBehaviorControl()
```

You have to assume behavior control before running any other robot-interface function.

- Behavior levels:
  - `10`: Highest
  - `20`: Normal
  - `30`: Lowest