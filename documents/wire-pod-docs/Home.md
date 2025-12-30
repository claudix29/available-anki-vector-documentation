Welcome to the wire-pod wiki!

***

# Wiki Links

* [Installation Guide](./Installation)

* [Dev Documentation](./For-Developers-and-Tinkerers)

* [More general tips, guides, and info](./Things-to-Know)

***

# What wire-pod is

**wire-pod** is custom voice server software for the Anki (now Digital Dream Labs) Vector robot. It is an alternative to the official Escape Pod product and does not require any payment to Digital Dream Labs nor any connection to their servers. It works with every Vector, **including ones which haven't been unlocked**.

***


# Features

- Every voice command is implemented
- Weather commands are easy to setup via [weatherapi.com](https://weatherapi.com) or [openweathermap.org](https://openweathermap.org)
- Knowledge-graph ("I have a question") commands are easy to setup via [Houndify](https://www.soundhound.com/), [OpenAI](https://openai.com/), [Together](https://together.ai), or [Ollama](https://ollama.com)
- Intent-graph is available when using OpenAI or Together as the knowledge-graph provider. This means you can configure wire-pod to send transcribed text to an LLM directly (if it doesn't match a command) rather than need you to go through "I have a question" first
- Custom commands
- Token and jdocs handlers, so a robot can be "signed in" to it
- A robot can sign in to wire-pod without ever touching a DDL server
- A robot can also sign in to wire-pod without needing to clear user data
- There is a Vector mobile app replacement hosted at port 8080 (by default) which allows you to change bot settings and the wire-pod configuration
- When a bot is authenticated, the bot is added (or modified if already there) to `sdk_config.ini`, which allows the Python SDK to continue to work

***

# Caveats

- The Vector mobile app cannot work with a bot that has been authenticated with wire-pod.
    - An alternative, fully functional web app alternative is included
- You must use 1.8 or 2.0.1 if you want to use this with a production bot. You cannot use any firmware version below that. I personally haven't run into any issues with it, and have noticed it to actually be quite active, but it is something to note.
    - When (if) Digital Dream Labs provides newer escape pod robot software, you can upgrade to those and they should retain functionality with wire-pod.

***

# Compatibility

## OS support
- Linux
    - Debian (apt)
    - Arch (pacman)
    - Fedora (dnf)
- Windows 10 and 11
- macOS

## Architecture support
- x86_64
- aarch64

***

# How

* It is all thanks to Digital Dream Labs for open-sourcing the [chipper voice server software](https://github.com/digital-dream-labs/chipper) and for creating Escape Pod in the first place.

* The Raspberry Pi Escape Pod images contain compiled `chipper` binaries packed with `upx`. It was easy to run `upx -d` on them and to open them up in a hex editor then to take out the pub/priv key combo. Those certificates are now located in `~repo/chipper/epod`. This is what allows compatibility with production robots running escape pod software.

* The community has also played a huge role in fleshing out wire-pod and making it what it is.

***

# Vocabulary

* **DDL** - Digital Dream Labs acronym

* **chipper** - what the voice server is called and may be referred to as.

* **SDK** - software development kit. This is also what allows services such as the mobile app to communicate with Vector.

* **vector-cloud** or **vic-cloud** - the program on the robot which makes the request to chipper.

* **intent** - when text is transcribed, the software will match it with a set of words to find out what "intent" best matches what was said, so the bot knows exactly what to do. For instance, "good robot" and similar phrases will end up as "intent_imperative_praise".

* **STT** - speech-to-text

* **prod robots** - Vectors that were sold to consumers and were set up like normal. AKA "production" robots

* **OSKR/dev-unlocked bots** - Vectors that have been unlocked by Anki, DDL, or by a developer who paid for OSKR (open-source kit for robots).