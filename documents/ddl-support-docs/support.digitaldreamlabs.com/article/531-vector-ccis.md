::: {#mainNav .navbar}
::: navbar-inner
::: container-fluid
[![Digital Dream Labs Knowledge
Base](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/63222136c713d51da3ede832/logo-75h.png){width="195"
height="75"}](https://support.digitaldreamlabs.com/){.brand}

[Toggle Navigation]{.sr-only} []{.icon-bar} []{.icon-bar} []{.icon-bar}

::: {.nav-collapse .collapse}
-   [[Home ](/)]{#home}
-   [[General Information
    ](/collection/1-general-information)]{#general-information}
-   [[Vector ](/collection/6-vector)]{#vector}
-   [[Cozmo ](/collection/9-cozmo)]{#cozmo}
-   [[OverDrive ](/collection/62-overdrive)]{#overdrive}
-   [[Escape Pod ](/collection/364-escape-pod)]{#escape-pod}
-   [[Puzzlets ](/collection/325-puzzlets)]{#puzzlets}
-   [[Contact](#){.contactUs onclick="window.Beacon('open')"}]{#contact}
-   [[Contact](#){.contactUs
    onclick="window.Beacon('open')"}]{#contactMobile}
:::
:::
:::
:::

::: {#contentArea .section .container-fluid}
::: row-fluid
::: {#main-content .section .span9}
::: {.contentWrapper .withRelated}
# The Customer Care Information Screen {#the-customer-care-information-screen .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

The Customer Care Information Screens (CCIS) help Vector owners and DDL
staff to identify issues with Vector\'s hardware or software in a
relatively easy, intuitive way. First, let\'s examine how to enter CCIS.
Then we\'ll take a look at the various CCIS screens and what they offer.

------------------------------------------------------------------------

### Accessing the Customer Care Information Screens:

1.  **Enter Pairing Mode:**
    1.  Make sure the Charger is plugged in to the wall with a wall
        plug.
    2.  Place Vector on his charger.
    3.  \[If Vector is booting up, wait for the clouds to finish
        displaying\]
    4.  Double click Vector's Back Button
2.  **Enter CCIS:**
    1.  **Gently** lift Vector\'s lift/arm assembly all the way up, then
        lower it all the way back down.
    2.  CCIS Screen 1 will appear.
3.  **Enable Additional Screens:**
    1.  Start from CCIS Screen 1, which we entered above.
    2.  **Gently** rotate Vector\'s head all the way down, then all the
        way back up.
4.  Tap the back button (the LED strip in the middle of the gold touch
    panel on Vector\'s Back) to cycle through screens.
    1.  Additional screens will NOT be available if Step 3 was not
        performed - you must perform Step 3 every time you enter CCIS to
        enable the additional screens.

------------------------------------------------------------------------

### Manipulating the robot in CCIS Mode:

-   To scroll through options in a Menu:
    -   **Gently and slowly** rotate either the left tread track or the
        right tread track to scroll through menu options if presented
        with a menu on the CCIS screen you are on.
-   To activate / select an option in a Menu:
    -   **Gently and slowly** lift Vector\'s lift and arm assembly all
        the way up, then rotate it back all the way down.

------------------------------------------------------------------------

### Screen 1: Software

-   **ESN:** The programmed serial number of the robot.
    -   Eight characters long
    -   On Anki models, the serial number starts with \"00\"
    -   On DDL models, the serial number starts with \"0dd\"
-   **OS:** The version of the software currently running on the robot.
-   **SSID:** The name of the wireless network that Vector is currently
    connected to.
-   **IP:** The internal address that Vector is located at on your
    network.
-   **SHA:** Secure Hashing Algorithm signature.
-   **Menu:**
    -   Clear User Data (See [Performing a Clear User Data
        Reset](//support.digitaldreamlabs.com/article/384-performing-a-clear-user-data-reset){target="_blank"}
        for more information)
    -   Exit

![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/62697075a535c33d541a28a1/file-GznCG0Myni.jpg)

------------------------------------------------------------------------

### Screen 2: Networking

-   **BLE ID:** The name that Vector broadcasts over Bluetooth. Usually
    in the format \"Vector\" followed by a 4-digit identifier, e.g.
    \"Vector N4Y6\".
-   **MAC:** The Media Access Control address that is tied to Vector\'s
    network interface.
-   **SSID:** The name of the wireless network that Vector is currently
    connected to.
-   **IP:** The internal address that Vector is located at on your
    network.
-   **Timestamp:** The time that Vector has determined via a connection
    to a network. If this is blank or out of date, Vector may have
    connection issues.
-   **NETWORK:** Displays the results of a pass/fail check for network
    conditions. Possible codes are:
    -   AVAILABLE
    -   CONNECTIVITY
    -   TLS
    -   AUTH
    -   BANDWIDTH
    -   CHECKING\...

![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/626970f3a535c33d541a28a4/file-244q5pqs2C.jpg)

------------------------------------------------------------------------

### Screen 3: Battery, Temperature, and Navigation

-   **SYS:** SysCon version.
-   **CLF:** The values of each of the four cliff sensors on the bottom
    of the robot. From left to right, the order is:
    -   Front Left
    -   Front Right
    -   Rear Left
    -   Rear Right
-   **DIST:** The measurement of distance that the robot can \"see\" in
    front of him that is clear of obstacles. The lower the number, the
    closer an obstacle is detected in front of the robot.
-   **TOUCH:** The value of the detected input from the touch sensor on
    the back of the robot, in between each of the four microphones
    (outlined in gold).
    -   This value should fluctuate if the gold sensor is touched by a
        human hand, and may also fluctuate near sources of electricity
        such as power cables to appliances, etc.
-   **BATT:** The current voltage of the battery.
-   **CHGR:** The voltage that the charger is providing to the robot.
    -   This will (or should) always measure 0 when the robot is OFF the
        charger.
    -   The expected range is 4.8-5.0V when the robot is on the charger
        and the charger is powered with a proper wall plug (DC 5V/1A
        minimum)
-   **TEMP:** The measured temperature of the headboard and bodyboard of
    the robot. These may fluctuate based upon ambient temperature,
    activity level of the robot, and other factors.
    -   Expected range during normal operation, depending upon ambient
        temperature (headboard, \"(H)\"): 52C - 80C

    -   Expected range during normal operation, depending upon ambient
        temperature (bodyboard, \"(B)\"): 34C - 54C

    -   Beyond these ranges, the robot will not function normally and
        the following overheat symptoms may be noted:

    -   -   Motor usage may be stopped.
        -   House icon with a thermometer may be displayed.
        -   In severe cases of overheat, the robot may shut down to
            protect against damage.

![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/6269710993a48c4448335e48/file-TlNHrgk9ch.jpg)

------------------------------------------------------------------------

### Screen 4: Movement

-   **ACC:** Displays the measured values of each axis monitored by the
    accelerometer in the robot. The values, respectively, are:\
    -   Z Axis
    -   Y Axis
    -   X Axis
-   **GYRO:** Displays the measured rate of change of the ACC
    (accelerometer) values, respective to each axis (first value is Z
    Axis, second value is Y Axis, third value is X Axis).

![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/626971167488cf771e51d408/file-SMySpVeMQw.jpg)

------------------------------------------------------------------------

### Screen 5: Positioning

-   **HEAD:** The angle of the head with respect to the surface the
    robot is resting on (and the body).
    -   The standard range is -21 degrees up to 46 degrees.
    -   Anything egregiously outside this expected range may result in
        an error.
-   **LIFT:** The angle of the lift / arm assembly with respect to the
    surface the robot is resting on (and the body).
    -   The standard range is -15 degrees up to 45 degrees.
    -   Anything egregiously outside this expected range may result in
        an error.
-   **LSPEED:** Displays the rate of travel of the left tread. 
    -   Should always stay at 0.00mm/s unless the robot is moving and/or
        the tread is being manually moved by the user.
-   **RSPEED:** Displays the rate of travel of the left tread. 
    -   Should always stay at 0.00mm/s unless the robot is moving and/or
        the tread is being manually moved by the user.

![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/626971247488cf771e51d409/file-lhfoeQWB9C.jpg)

------------------------------------------------------------------------

### Screen 6: Microphones

-   **MICS:** Shows the values of the microphones and their detection of
    ambient or directed noise, e.g. nearby conversation or commands
    given to the robot.
    -   The microphones are highly sensitive. These values should always
        fluctuate, even in near-silence.
        -   Lack of fluctuation in any microphone reading is likely to
            indicate hardware failure, and may result in decreased voice
            command recognition and/or beat and noise detection.
    -   Shown in the following order:
        -   Rear Left
        -   Front Left
        -   Rear Right
        -   Front Right

![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/626971a893a48c4448335e4c/file-92XnAxZylW.jpg)

------------------------------------------------------------------------

### Screen 7: Sound Analysis

**This screen is available on OSKR / developer robots only.**

-   **3D Directional Microphone Visualization:** Displays the robot\'s
    interpretation of where sound is originating.
    -   Sound that is currently being heard is displayed as as \"spike\"
        or a bar in the directional circle.
    -   The direction of the last sound that was heard is noted at the
        edge of the circle in a red square.

![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/626971b46c886c75aabeabce/file-eMEseeoujx.jpg)

------------------------------------------------------------------------

### Screen 8: Camera Test Mode

**This screen is available on OSKR / developer robots only.**

-   **Camera Test Mode:** Shows the camera feed from the robot.
    -   Lifting the lift and setting it back down enables standard robot
        behavior while showing the camera feed on the screen. This is
        useful for testing object recognition models and the behavior
        the robot will display when objects are identified.

![](//d33v4339jhl8k0.cloudfront.net/docs/assets/5e3f0b1e2c7d3a7e9ae777f5/images/626971c7b065ad1af4f81612/file-hLCKThtIGi.jpg)

------------------------------------------------------------------------

*Revised 4/27/2022\
RLB*

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/531-vector-ccis"}
[Did this answer your question?]{.articleRatings-question} [ [
![](data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjIwIiB2aWV3Ym94PSIwIDAgMjAgMjAiIHdpZHRoPSIyMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0ibTggMTRhLjk5Ny45OTcgMCAwIDEgLS43MDctLjI5M2wtMi0yYS45OTkuOTk5IDAgMSAxIDEuNDE0LTEuNDE0bDEuMjkzIDEuMjkzIDQuMjkzLTQuMjkzYS45OTkuOTk5IDAgMSAxIDEuNDE0IDEuNDE0bC01IDVhLjk5Ny45OTcgMCAwIDEgLS43MDcuMjkzIiBmaWxsPSIjMkNDNjgzIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICA8L3N2Zz4=)
]{.articleRatings-feedback-tick} [Thanks for the
feedback]{.articleRatings-feedback-message} ]{.articleRatings-feedback}
[There was a problem submitting your feedback. Please try again
later.]{.articleRatings-failure}

::: articleRatings-actions
[Yes]{.sr-only} [
![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik01LjUzOCAxNC4wMjZBMTkuMzkyIDE5LjM5MiAwIDAgMSAxMiAxMi45MjNjMi4yNiAwIDQuNDMyLjM4OCA2LjQ2MiAxLjEwMy0xLjA4NyAyLjYxLTMuNTcxIDQuNDM2LTYuNDYyIDQuNDM2LTIuODkxIDAtNS4zNzUtMS44MjUtNi40NjItNC40MzZ6bTEuODQ3LTMuODcyYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnptOS4yMyAwYTEuODQ2IDEuODQ2IDAgMSAxIDAtMy42OTIgMS44NDYgMS44NDYgMCAwIDEgMCAzLjY5MnoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)
]{.rating-face}

[No]{.sr-only} [
![](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjM4NSAxMy44NDZhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem05LjIzIDBhMS44NDYgMS44NDYgMCAxIDEgMC0zLjY5MiAxLjg0NiAxLjg0NiAwIDAgMSAwIDMuNjkyem0tLjk2NyA0Ljk1YS45OTIuOTkyIDAgMCAxLS42MTUtLjIxMmMtMS43MDEtMS4zNDktNC4zNjQtMS4zNDktNi4wNjUgMGEuOTk4Ljk5OCAwIDAgMS0xLjM2LS4xMjMuODk1Ljg5NSAwIDAgMSAuMTI3LTEuM0E2Ljg5NyA2Ljg5NyAwIDAgMSAxMiAxNS42OTJjMS41NTUgMCAzLjA2OS41MjEgNC4yNjYgMS40NjcuNDEuMzI2LjQ2Ny45MDkuMTI3IDEuM2EuOTgyLjk4MiAwIDAgMS0uNzQ1LjMzNXoiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9zdmc+)
]{.rating-face}
:::
:::

::: {.section .articleFoot}

Still need help? [Contact Us](#){#sbContact .contactUs
onclick="window.Beacon('open')"} [Contact Us](#){#sbContactMobile
.contactUs onclick="window.Beacon('open')"}

Last updated on August 25, 2022
:::
:::

::: {.section .related}
### Related Articles

-   [Troubleshooting Vector\'s
    Connection](/article/104-troubleshooting-vectore28099s-connection)
-   [How do I update Vector\'s
    software?](/article/54-vector-software-update)
-   [How Do I Find Vector\'s Serial
    Number?](/article/338-how-do-i-find-vectors-serial-number)
-   [Performing a Clear User Data
    Reset](/article/384-performing-a-clear-user-data-reset)
-   [Performing a Firmware Recovery
    Reset](/article/383-performing-a-firmware-recovery-reset)
-   [Why does Vector show an
    error?](/article/101-why-does-vector-show-an-error)
-   [Vector Error & Status Codes](/article/96-vector-status-codes)
-   [Troubleshooting Charging
    Issues](/article/100-troubleshooting-charging-issues)
-   [Vector Developer Tools](/article/361-vector-developer-tools)
-   [Why is there no sound?](/article/102-why-is-there-no-sound)
:::
:::

[Toggle Search]{.sr-only}

::: {#serp-dd .sb style="display: none;"}
:::

### Categories

-   [Customer Care Information Screen
    ](/category/524-customer-care-information-screen)
-   [Frequently Asked Questions
    ](/category/15-frequently-asked-questions)
-   [Vector Membership ](/category/486-vector-membership)
-   [Setting Vector Up ](/category/491-setting-vector-up)
-   [Software Updates ](/category/483-software-updates)
-   [Interacting with Vector ](/category/74-living-with-vector)
-   [Charging & Power ](/category/489-charging-power)
-   [Vector\'s Cube ](/category/482-vectors-cube)
-   [Documents & Manuals ](/category/484-documents-manuals)
-   [Reset Vector ](/category/487-reset-vector)
-   [Open Source Kit for Robotics ](/category/343-oskr)
-   [Product Information ](/category/67-product-information)
-   [SDK Information ](/category/34-sdk-information)
-   [Connection Troubleshooting
    ](/category/481-connection-troubleshooting)
-   [Error Troubleshooting ](/category/488-error-troubleshooting)
-   [Speech Recognition Troubleshooting
    ](/category/490-speech-recognition-troubleshooting)
-   [Sound Troubleshooting ](/category/485-sound-troubleshooting)
-   [Technical Troubleshooting ](/category/16-troubleshooting)
:::

::: {#noResults style="display:none;"}
No results found
:::

© [Digital Dream Labs](https://support.digitaldreamlabs.com/) 2023.
Powered by [Help
Scout](https://www.helpscout.com/knowledge-base/?utm_source=docs&utm_medium=footerlink&utm_campaign=Docs+Branding){rel="nofollow noopener noreferrer"
target="_blank"}
:::
