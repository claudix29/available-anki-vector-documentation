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
# OSKR Users - Robot Onboarding for Escape Pod {#oskr-users---robot-onboarding-for-escape-pod .title}

[](javascript:window.print() "Print this article"){.printArticle
aria-label="Print this Article"}

# Vector Robot Configuration {#vector-robot-configuration children-count="0"}

Here we will learn how to use OSKR to point Vector to the Escape Pod.\
\
***Before continuing, please be familiar with the current Known Issues
and Limitations. See* **[Known Issues and
Limitations](//support.digitaldreamlabs.com/article/351-known-issues){target="_blank"}\
\
**Basic Requirements:**\
-SSH Access to Vector (Note: Vector ***must* **be on OSKR firmware to
continue.)\
-Escape Pod Invitation Email

1.  License your Vector:
    1.  Check your email for an Escape Pod license invitation. Use the
        linked form to submit your email address and serial number to
        Digital Dream Labs- please be sure to use the email address that
        your purchase was made with.\
        1.  Note: If using Gmail, be sure to check your Updates and
            Promotions tabs!
    2.  You will receive an email with a text file that contains your
        license string.
    3.  If you have not already done so, [CLICK HERE to complete the
        setup for your Raspberry
        Pi](//support.digitaldreamlabs.com/article/350-oskr-users-pi-flashing-for-the-escape-pod){target="_blank"}-
        this will need to be done to continue in the process. You can
        continue through Steps 2 and 3 while waiting for your license
        string.
    4.  Open a new tab in your browser and connect to
        [http://escapepod.local](http://escapepod.local){target="_blank"}
    5.  Click "Add A License To Start"
    6.  Submit license code into the text box on the "Licenses" Screen,
        and click \"Save\".
2.  Install the required binaries\
    (**Complete this inside the Vector Robot)**\
    **NOTE: Step 2 is NOT required if you are on OSKR firmware 1.8 or
    above with the Pod- skip to Step 3.**
    1.  Download the [vic-cloud and vic-gateway
        binaries](https://github.com/digital-dream-labs/vector-cloud/releases/tag/v1.0.0){target="_blank"}
    2.  SSH into your Vector and mount as read-write:\
        *\$ mount -o remount rw /*
    3.  CREATE BACKUPS of existing vic-cloud and vic-gateway files in
        /anki/bin:\
        *\$ mv /anki/bin/vic-cloud /anki/bin/vic-cloud.orig\
        \$ mv /anki/bin/vic-gateway /anki/bin/vic-gateway.orig*
    4.  From a command line window on your local computer, use scp to
        transfer the downloaded vic-cloud and vic-gateway files from
        your computer to Vector. We are going to transfer these from
        your PC into the /anki/bin directory on the robot. **Be sure to
        start this process inside the local computer directory where the
        vic-cloud and vic-gateway files are stored, or provide an
        absolute path to vic-cloud and vic-gateway files**:\
        *\$ scp -i \<SSH key path\> vic-cloud root@\<IP\>:/anki/bin\
        *\$ scp -i \<SSH key path\> vic-gateway root@\<IP\>:/anki/bin**
        1.  Note: Be sure to change \"\<SSH key path\>\" to the path
            where your Vector\'s SSH key is stored. Change \"\<IP\>\" to
            the internal IP address of your Vector robot.
    5.  Switch back to the command line window inside Vector. Using SSH,
        set permissions and ownership of the files we just transferred
        to him:\
        *\$ cd /anki/bin\
        \$ chown cloud:anki /anki/bin/vic-cloud\
        \$ chown net:anki /anki/bin/vic-gateway\
        \$ chmod 755 /anki/bin/vic-gateway\
        \$ chmod 755 /anki/bin/vic-cloud*
3.  Replace existing server_config.json contents:\
    (**Complete this inside the Vector Robot)**
    1.  If you haven\'t already done so, SSH into your Vector and mount
        as read-write:\
        *\$ mount -o remount rw /*
    2.  Change directory to find the file: *\$ cd
        /anki/data/assets/cozmo_resources/config/*
    3.  Change permissions of the server_config.json file to enable
        editing: *\$ chmod u+w
        /anki/data/assets/cozmo_resources/config/server_config.json*
    4.  [***CREATE BACKUP***]{.underline} of existing
        server_config.json: *\$ cp
        /anki/data/assets/cozmo_resources/config/server_config.json
        /anki/data/assets/cozmo_resources/config/server_config.json.orig*
    5.  Edit server_config.json to point to Escape Pod: *\$ nano
        /anki/data/assets/cozmo_resources/config/server_config.json\
        *The contents should be as follows:\
        `{ "jdocs": "escapepod.local:443", "tms": "escapepod.local:443", "chipper": "escapepod.local:443", "check": "escapepod.local:80/ok", "logfiles": "s3://anki-device-logs-prod/victor", "appkey": "oDoa0quieSeir6goowai7f" }`
    6.  Use \"Ctrl+X\" to escape Nano and use \"y\" to save changes.
        When asked what name you want to give the file, press Enter to
        leave it as is.
4.  Perform Clear User Data:
    1.  Place Vector on his Charger.
    2.  Double tap his Back button.
    3.  Gently lift his arm assembly all the way up, then lower it back
        down.
    4.  Rotate one of his treads until "Clear User Data" is highlighted.
    5.  Gently lift his arm assembly all the way up, then lower it back
        down.
    6.  Confirm the wipe by rotating Vector\'s tread again to select
        \"Confirm\".
    7.  Gently lift his arm assembly all the way up, then lower it back
        down.\
        \
        *Vector will reboot and the ddl.io/v onboarding screen will
        appear.*
5.  Roll through Vector-Web-Setup to finalize onboarding\
    1.  Connect to
        [http://escapepod.local](http://escapepod.local){target="_blank"}
        and click on "Onboarding" in the top right corner.
    2.  With Vector on his Charger, double tap his back button.
    3.  Click \"Pair with Vector\", then select the correct Vector name
        from the dialog box that appears.
    4.  Set the desired settings, then click \"Activate Your Robot!\"
    5.  Select your robot variables.
    6.  Have fun! Submit feedback, including bugs, ideas, and
        suggestions to: escapepodbeta@digitaldreamlabs.com

::: {.articleRatings article-url="https://support.digitaldreamlabs.com/article/349-escape-pod-robot-onboarding-oskr"}
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

Last updated on March 20, 2022
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
