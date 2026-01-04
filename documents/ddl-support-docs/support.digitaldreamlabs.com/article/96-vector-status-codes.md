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
::: contentWrapper
# Vector Error & Status Codes {#vector-error-status-codes .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

Vector will occasionally display an error code (also known as a Status
Code) on his screen. These Status Codes are usually nothing to worry
about unless they happen often. For troubleshooting, please see this
article: [Why Does Vector Show An
Error?](//support.digitaldreamlabs.com/article/101-why-does-vector-show-an-error){target="_blank"
style="font-size: 14px;"}

::: {.section .callout-blue children-count="0"}
*This article was made possible by a combination of internal
documentation but also by the work of Randall Maas and his *[Vector
Technical Reference
Manual](https://github.com/GooeyChickenman/victor/blob/master/documentation/Vector-TRM.pdf){target="_blank"}*.
Digital Dream Labs wishes to thank Randall for his dedication to the
Vector Technical Reference Manual, which is a fantastic resource.*
:::

-   800 - 999
    -   If any of these Status Codes consistently appear, there could
        possibly be a hardware issue with Vector. Startup into Recovery
        Mode, Clear User Data, and use the Vector app to Reinstall
        Vector's OS.
-   700 - 705
    -   These are issues triggered by the reading of an internal sensor.
        A good example would be Vector operating in a room that was too
        hot.
-   200 - 219
    -   If any of these Status Codes appear, they involve Software
        Updates or the Recovery process. Typically, retrying the Update
        will fix the issue unless there is a fundamentally more complex
        issue involved.
-   1 - 10
    -   These codes belong to a core Vector service that runs all of
        Vector's other services. Most of these codes will never appear
        on Vector's display.

------------------------------------------------------------------------

### Error Code Table {#error-code-table children-count="0"}

+-----------------------+-----------------------+-----------------------+
| **Error Code**        | [Code                 | **Explanation**       |
|                       | Descript              |                       |
|                       | ion]{style="font-weig |                       |
|                       | ht: bolder; font-fami |                       |
|                       | ly: 'Helvetica Neue'; |                       |
|                       |  font-size: normal;"} |                       |
+-----------------------+-----------------------+-----------------------+
| **1**                 | Switchboard: unknown  | Should never happen.  |
|                       | status                |                       |
+-----------------------+-----------------------+-----------------------+
| **2**                 | Switchboard: OTA in   | An Over-The-Air       |
|                       | progress              | update is currently   |
|                       |                       | in progress.          |
+-----------------------+-----------------------+-----------------------+
| **3**                 | Switchboard: OTA      | An Over-The-Air       |
|                       | completed             | Update has completed  |
|                       |                       | successfully.         |
+-----------------------+-----------------------+-----------------------+
| **4**                 | Switchboard:          | The robot is          |
|                       | rebooting             | rebooting.            |
+-----------------------+-----------------------+-----------------------+
| **5**                 | Switchboard: Other    | An unknown error      |
|                       | OTA error             | occurred with an      |
|                       |                       | Over-The-Update.      |
+-----------------------+-----------------------+-----------------------+
| **10**                | OS: Unknown system    | \                     |
|                       | error                 |                       |
+-----------------------+-----------------------+-----------------------+
| **200**               | Unexpected .tar       | -   Tar file was      |
|                       | contents              |     corrupt           |
|                       |                       | -   Tar contents did  |
|                       |                       |     not follow the    |
|                       |                       |     expected order.   |
+-----------------------+-----------------------+-----------------------+
| **201**               | Unhandled manifest    | -   Unhandled section |
|                       | version or feature    |     format for        |
|                       |                       |     expansion         |
|                       |                       | -   The manifest      |
|                       |                       |     version is not    |
|                       |                       |     supported         |
|                       |                       | -   The OTA has the   |
|                       |                       |     wrong number of   |
|                       |                       |     images for the    |
|                       |                       |     type              |
|                       |                       | -   The OTA is        |
|                       |                       |     missing a BOOT or |
|                       |                       |     SYSTEM image      |
|                       |                       | -   The manifest      |
|                       |                       |     configuration is  |
|                       |                       |     not understood    |
+-----------------------+-----------------------+-----------------------+
| **202**               | Boot Control HAL      | -   Could not mark    |
|                       | failure               |     target slot       |
|                       |                       | -   a or b partition  |
|                       |                       |     unbootable        |
|                       |                       | -   Could not set     |
|                       |                       |     target slot as    |
|                       |                       |     active            |
+-----------------------+-----------------------+-----------------------+
| **203**               | Could not open URL    | The URL for the link  |
|                       |                       | was invalid (check    |
|                       |                       | the link and make     |
|                       |                       | sure you can download |
|                       |                       | the OTA on your local |
|                       |                       | machine from the same |
|                       |                       | link)                 |
+-----------------------+-----------------------+-----------------------+
| **204**               | URL not a TAR file    | The URL used to       |
|                       |                       | initiate an update    |
|                       |                       | pointed to an         |
|                       |                       | incorrect filetype.   |
|                       |                       | Check the link.       |
+-----------------------+-----------------------+-----------------------+
| **205**               | Decompressor error    | The .tar/.ota file    |
|                       |                       | could not be          |
|                       |                       | unpacked- could       |
|                       |                       | happen if the .ota    |
|                       |                       | file is corrupted.    |
|                       |                       | Reboot the robot and  |
|                       |                       | try again.            |
+-----------------------+-----------------------+-----------------------+
| **206**               | Block error           | \                     |
+-----------------------+-----------------------+-----------------------+
| **207**               | Imgdiff error         | Delta payload error   |
+-----------------------+-----------------------+-----------------------+
| **208**               | I/O error             | -   Couldn\'t sync OS |
|                       |                       |     images to disk    |
|                       |                       | -   Disk error while  |
|                       |                       |     transferring OTA  |
|                       |                       |     file              |
+-----------------------+-----------------------+-----------------------+
| **209**               | Signature validation  | -   Manifest failed   |
|                       | error                 |     signature         |
|                       |                       |     validation        |
|                       |                       | -   The aboot, boot   |
|                       |                       |     image, system     |
|                       |                       |     image, or         |
|                       |                       |     delta.bin hash    |
|                       |                       |     doesn\'t match    |
|                       |                       |     the signed        |
|                       |                       |     manifest (files   |
|                       |                       |     may have been     |
|                       |                       |     modified)         |
+-----------------------+-----------------------+-----------------------+
| **210**               | Decryption error      | Encryption scheme is  |
|                       |                       | not supported.        |
+-----------------------+-----------------------+-----------------------+
| **211**               | Wrong base version    | Vector\'s current     |
|                       |                       | version doesn\'t      |
|                       |                       | match what is         |
|                       |                       | expected for this     |
|                       |                       | delta update          |
+-----------------------+-----------------------+-----------------------+
| **212**               | Subprocess exception  | The decompression     |
|                       |                       | engine had an         |
|                       |                       | unexpected, undefined |
|                       |                       | error.                |
+-----------------------+-----------------------+-----------------------+
| **213**               | Wrong serial number   | The processor serial  |
|                       |                       | number (QSN) is not   |
|                       |                       | correct for the robot |
|                       |                       | that the image is     |
|                       |                       | being applied to.     |
+-----------------------+-----------------------+-----------------------+
| **214**               | Dev / Prod mismatch   | Development Vectors   |
|                       |                       | can't install         |
|                       |                       | production OTA        |
|                       |                       | software, and         |
|                       |                       | production Vectors    |
|                       |                       | can't install         |
|                       |                       | development OTA       |
|                       |                       | software (make sure   |
|                       |                       | that you are applying |
|                       |                       | the correct image to  |
|                       |                       | Vector).\             |
+-----------------------+-----------------------+-----------------------+
| **215**               | Socket Timeout        | OTA transfer failed,  |
|                       | (network stall)       | due to timeout.       |
|                       |                       | (There may be poor    |
|                       |                       | network               |
|                       |                       | connectivity)\        |
+-----------------------+-----------------------+-----------------------+
| **216**               | Downgrade not allowed | -   The robot is not  |
|                       |                       |     allowed to        |
|                       |                       |     upgrade or        |
|                       |                       |     downgrade from    |
|                       |                       |     the current       |
|                       |                       |     version to the    |
|                       |                       |     new version       |
|                       |                       | -   OS version name   |
|                       |                       |     in the update     |
|                       |                       |     file doesn't      |
|                       |                       |     follow an         |
|                       |                       |     acceptable        |
|                       |                       |     pattern (the      |
|                       |                       |     version suffixes  |
|                       |                       |     -- for            |
|                       |                       |     production,       |
|                       |                       |     release           |
|                       |                       |     candidate,        |
|                       |                       |     userdev, and      |
|                       |                       |     development --    |
|                       |                       |     must match the    |
|                       |                       |     already installed |
|                       |                       |     software)         |
+-----------------------+-----------------------+-----------------------+
| **217**               |                       | \                     |
+-----------------------+-----------------------+-----------------------+
| **218**               |                       | \                     |
+-----------------------+-----------------------+-----------------------+
| **219**               | Other Exception       | Other unexpected,     |
|                       |                       | undefined error while |
|                       |                       | transferring OTA      |
|                       |                       | file.\                |
+-----------------------+-----------------------+-----------------------+
|                       |                       | \                     |
+-----------------------+-----------------------+-----------------------+
|  //                   | Hardware Issues       | \                     |
+-----------------------+-----------------------+-----------------------+
| **990**               | DISPLAY_FAILURE       | The screen could not  |
|                       |                       | be detected /         |
|                       |                       | initialized (The LCD  |
|                       |                       | display is not        |
|                       |                       | communicating         |
|                       |                       | properly with the     |
|                       |                       | processor.)           |
+-----------------------+-----------------------+-----------------------+
| **981**               | CAMERA_STOPPED        | -   The camera        |
|                       |                       |     stopped           |
|                       |                       |     responding to     |
|                       |                       |     instructions.     |
|                       |                       | -   mm-anki-camera    |
|                       |                       |     process hung when |
|                       |                       |     the camera stream |
|                       |                       |     was exited via    |
|                       |                       |     vic-engine stop.  |
+-----------------------+-----------------------+-----------------------+
| **980**               | CAMERA_FAILURE        | -   The camera could  |
|                       |                       |     not be detected / |
|                       |                       |     initialized.      |
|                       |                       | -   The camera        |
|                       |                       |     stopped           |
|                       |                       |     responding to     |
|                       |                       |     instructions.     |
|                       |                       | -   mm-anki-camera    |
|                       |                       |     process hung when |
|                       |                       |     the camera stream |
|                       |                       |     was exited via    |
|                       |                       |     vic-engine stop.  |
+-----------------------+-----------------------+-----------------------+
| **970**               | WIFI_HW_FAILURE       | The Wi-Fi radio       |
|                       |                       | antenna could not be  |
|                       |                       | detected /            |
|                       |                       | initialized.          |
+-----------------------+-----------------------+-----------------------+
| **960**               | IMU_FAILUR            | The IMU ( [Inertial   |
|                       |                       | Measurement           |
|                       |                       | Unit](https://en.     |
|                       |                       | wikipedia.org/wiki/In |
|                       |                       | ertial_measurement_un |
|                       |                       | it){target="_blank"}) |
|                       |                       | could not be detected |
|                       |                       | / initialized.        |
+-----------------------+-----------------------+-----------------------+
|                       |                       | \                     |
+-----------------------+-----------------------+-----------------------+
|  //                   | Vector OS Process     | \                     |
|                       | Issues                |                       |
+-----------------------+-----------------------+-----------------------+
| **923**               | NO_CLOUD_PROCESS      | Vic-cloud failed to   |
|                       |                       | start or stopped      |
|                       |                       | unexpectedly.         |
+-----------------------+-----------------------+-----------------------+
| **921**               | NO_GATEWAY            | Vic-gateway was       |
|                       |                       | unable to start or    |
|                       |                       | crashed\              |
+-----------------------+-----------------------+-----------------------+
| **920**               | VIC_GATEWAY_CERT      | Vic-gateway-cert was  |
|                       |                       | unable to generate a  |
|                       |                       | x509 certificate for  |
|                       |                       | vic-gateway           |
+-----------------------+-----------------------+-----------------------+
| **919**               | SYSTEMD               | Systemd is not        |
|                       |                       | working properly\     |
+-----------------------+-----------------------+-----------------------+
| **917**               | NO_ROBOT_COMMS        | -   Vic-anim crashed  |
|                       |                       |     or failed to      |
|                       |                       |     start.            |
|                       |                       | -   Vic-robot stopped |
|                       |                       |     responding.       |
+-----------------------+-----------------------+-----------------------+
| **916**               | NO_ROBOT_PROCESS      | -   Vic-robot was     |
|                       |                       |     unable to start   |
|                       |                       |     or crashed        |
+-----------------------+-----------------------+-----------------------+
| **915**               | NO_ENGINE_COMMS       | Vic-engine stopped    |
|                       |                       | responding\           |
+-----------------------+-----------------------+-----------------------+
| **914**               | NO_ENGINE_PROCESS     | Vic-engine stopped    |
|                       |                       | unexpectedly.         |
+-----------------------+-----------------------+-----------------------+
| **913**               | NO_SWITCHBOARD        | Vic-switchboard       |
|                       |                       | stopped unexpectedly. |
+-----------------------+-----------------------+-----------------------+
| **911**               | AUDIO_FAILURE         | The audio engine      |
|                       |                       | stopped unexpectedly  |
|                       |                       | or failed to start on |
|                       |                       | boot.                 |
+-----------------------+-----------------------+-----------------------+
| **909**               | STOP_BOOT_ANIM_FAILED | The boot animation    |
|                       |                       | process failed or was |
|                       |                       | unable to start.      |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
|  //                   | Hardware Issues       |                       |
+-----------------------+-----------------------+-----------------------+
| **899**               | NO_BODY               | -   The main board is |
|                       |                       |     unable to         |
|                       |                       |     communicate with  |
|                       |                       |     the body-board    |
|                       |                       |     (The cable        |
|                       |                       |     between boards    |
|                       |                       |     may be            |
|                       |                       |     disconnected)     |
|                       |                       | -   May appear due to |
|                       |                       |     a software bug in |
|                       |                       |     version 1.6       |
+-----------------------+-----------------------+-----------------------+
| **898**               | SPINE_SELECT_TIMEOUT  | -    The main board   |
|                       |                       |     is unable to      |
|                       |                       |     communicate with  |
|                       |                       |     the body-board    |
|                       |                       |     (the cable        |
|                       |                       |     between boards    |
|                       |                       |     may be            |
|                       |                       |     disconnected).    |
|                       |                       | -   This also appears |
|                       |                       |     as a software bug |
|                       |                       |     in version 1.6.   |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
|  //                   | External Sensor       |                       |
|                       | Issues                |                       |
+-----------------------+-----------------------+-----------------------+
| **895**               | TOUCH_SENSOR          | The back touch sensor |
|                       |                       | failed during         |
|                       |                       | power-on self test or |
|                       |                       | during runtime.       |
+-----------------------+-----------------------+-----------------------+
| **894**               | TOF                   | TOF (Time-Of-Flight)  |
|                       |                       | sensor failed to      |
|                       |                       | initialize or stopped |
|                       |                       | working.              |
+-----------------------+-----------------------+-----------------------+
| **893**               | CLIFF_BL              | The back left cliff   |
|                       |                       | sensor failed to      |
|                       |                       | initialize or stopped |
|                       |                       | working.              |
+-----------------------+-----------------------+-----------------------+
| **892**               | CLIFF_BR              | The back right cliff  |
|                       |                       | sensor failed to      |
|                       |                       | initialize or stopped |
|                       |                       | working.              |
+-----------------------+-----------------------+-----------------------+
| **891**               | CLIFF_FL              | The front left cliff  |
|                       |                       | sensor failed to      |
|                       |                       | initialize or stopped |
|                       |                       | working.              |
+-----------------------+-----------------------+-----------------------+
| **890**               | CLIFF_FR              | The front right cliff |
|                       |                       | sensor failed to      |
|                       |                       | initialize or stopped |
|                       |                       | working.              |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
|  //                   | Microphone Issues     |                       |
+-----------------------+-----------------------+-----------------------+
| **873**               | MIC_BL                | Back left microphone  |
|                       |                       | failed to initialize  |
|                       |                       | / send data.          |
+-----------------------+-----------------------+-----------------------+
| **872**               | MIC_BR                | Back right microphone |
|                       |                       | failed to initialize  |
|                       |                       | / send data.          |
+-----------------------+-----------------------+-----------------------+
| **871**               | MIC_FL                | Front left microphone |
|                       |                       | failed to initialize  |
|                       |                       | / send data.          |
+-----------------------+-----------------------+-----------------------+
| **870**               | MIC_FR                | Front right           |
|                       |                       | microphone failed to  |
|                       |                       | initialize / send     |
|                       |                       | data.                 |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
|  //                   | Cloud Errors          |                       |
+-----------------------+-----------------------+-----------------------+
| **852**               | CLOUD_READ_ESN        |  There is a problem   |
|                       |                       | reading the cloud     |
|                       |                       | electronic serial     |
|                       |                       | number.               |
+-----------------------+-----------------------+-----------------------+
| **851**               | CLOUD_TOKEN_STORE     |  There is a problem   |
|                       |                       | with the cloud token  |
|                       |                       | store.                |
+-----------------------+-----------------------+-----------------------+
| **850**               | CLOUD_CERT            |  There is a problem   |
|                       |                       | with the cloud        |
|                       |                       | certificate.          |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
|  //                   | Manufacturing Issues  |                       |
+-----------------------+-----------------------+-----------------------+
| **840**               | NO_CAMERA_CALIB       | The camera is not     |
|                       |                       | calibrated.           |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
|  //                   | Vector OS Process     |                       |
|                       | Issues                |                       |
+-----------------------+-----------------------+-----------------------+
| **801**               | DFU_FAILED            | The process to update |
|                       |                       | the cube firmware     |
|                       |                       | failed.               |
+-----------------------+-----------------------+-----------------------+
| **800**               | NO_ANIM_PROCESS       | Vic-anim was unable   |
|                       |                       | to start or crashed.  |
+-----------------------+-----------------------+-----------------------+
|                       |                       |                       |
+-----------------------+-----------------------+-----------------------+
|  //                   | Internal Sensor       |                       |
|                       | Derived Issues        |                       |
+-----------------------+-----------------------+-----------------------+
| **705**               | SHUTDOWN_             | The robot shut down   |
|                       | BATTERY_CRITICAL_TEMP | because the battery   |
|                       |                       | was too hot to        |
|                       |                       | operate safely.       |
+-----------------------+-----------------------+-----------------------+
| **702**               | SHUTDOWN_             | The robot was shut    |
|                       | BATTERY_CRITICAL_VOLT | down because the      |
|                       |                       | battery voltage was   |
|                       |                       | too low.              |
+-----------------------+-----------------------+-----------------------+
| **701**               | SHUTDOWN              | The gyroscope sensor  |
|                       | _GYRO_NOT_CALIBRATING | values were out of    |
|                       |                       | normal range or the   |
|                       |                       | gyroscope failed (it  |
|                       |                       | wasn't able to        |
|                       |                       | calibrate), so the    |
|                       |                       | robot shut down.      |
+-----------------------+-----------------------+-----------------------+
| **700**               | SHUTDOWN_BUTTON       | Normal shutdown due   |
|                       |                       | to the button being   |
|                       |                       | pressed.              |
+-----------------------+-----------------------+-----------------------+

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/96-vector-status-codes"}
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

Last updated on December 29, 2021
:::
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
