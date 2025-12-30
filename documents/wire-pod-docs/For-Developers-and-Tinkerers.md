# Implement an STT library/service

See [./chipper/pkg/wirepod/stt/coqui/Coqui.go](https://github.com/kercre123/wire-pod/blob/main/chipper/pkg/wirepod/stt/coqui/Coqui.go) and [./chipper/cmd/coqui/main.go](https://github.com/kercre123/wire-pod/blob/main/chipper/cmd/coqui/main.go) for a good example of how to implement an STT library in wire-pod.

# Plugins

- Example of what a plugin source code file should contain:

```
package main

var Utterances = []string{"hello world", ...}
var Name = "Example"
func Action(transcribedText, botSerial, guid, target string) (string, string) {
    // first string: intent
    // second string: spoken text
    return "intent_imperative_praise", ""
}
```

- That will cause Vector to complete "intent_imperative_praise" when he hears "Hey Vector, hello world".

- If the second returned string isn't blank, Vector will speak the string that is put in there rather than perform the intent in the first string.

- If both are blank, the command will be handled by the normal text-to-intent processor (as if the plugin isn't there at all).

- You can make it so every command goes through the plugin if you use `var Utterances = []string{"*"}`

- You can use github.com/fforchino/vector-go-sdk if you want to use the SDK in your plugin.
  - The sdk_wrapper does not work nicely in wire-pod at the moment. You will have to use the `vector` and `vectorpb` packages.
  - To initiate a connection with Vector, you should do:

```
	robot, err := vector.New(
		vector.WithSerialNo(botSerial),
		vector.WithTarget(target),
		vector.WithToken(guid),
	)
```

- You must compile this with `sudo /usr/local/go/bin/go build -buildmode=plugin -o ~/wire-pod/chipper/plugins/example.so example.go`, on the same machine WirePod is running on. To get WirePod to load the plugin, you must restart wire-pod (`sudo systemctl restart wire-pod`). To reduce the filesize of the plugin, you can add `-ldflags "-w -s"`.

# Python SDK

A fork of the anki_vector Python SDK (modified to work with wire-pod and the latest versions of Python) exists here: [Python SDK](https://github.com/kercre123/wirepod-vector-python-sdk)

# Setup WirePod with OpenAI's Whisper

- This should only be done on modern and powerful hardware on Linux or macOS. Ubuntu (20.04/22.04) is recommended.
  - For reference, it runs nicely on my desktop with a Ryzen 5 3600 and RTX 2060.
  - ARM-based Macs also run this nicely.

1. Setup wire-pod like normal, but run `sudo ./setup.sh` rather than `sudo STT=vosk ./setup.sh`.
  - On macOS, you will have to use the Linux installation guide. You cannot use the prebuilt WirePod release as that was built with VOSK.
2. When it asks you for an STT service, enter `4` (even though there are three listed).
3. It should complete everything automatically. Continue setting wire-pod up per the Installation guide.

- If you have an NVIDIA GPU and want to accelerate Whisper, also complete the following:
  - On ARM-based (M1>) based Macs, GPU (Metal) acceleration will be enabled by default. The following steps should only be done on Linux.

4. [Install the CUDA toolkit and CUDA driver](https://developer.nvidia.com/cuda-downloads) then restart your computer.
5. Make sure wire-pod isn't running (`systemctl stop wire-pod`) and run:

```
cd ~/wire-pod/whisper.cpp
sudo make clean
sudo PATH=$PATH:/usr/local/cuda/bin GGML_CUDA=1 make libwhisper.so
```

6. If you set wire-pod up as a daemon to run in the background, you will have to run this again to rebuild wire-pod:

```
cd ~/wire-pod
sudo ./setup.sh daemon-enable
```

7. Start wire-pod. CUDA acceleration should now be working.